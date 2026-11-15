# Classes/Windows/SoundManager.cs
    .text

.globl m_Skymu_Sounds_SoundManager_CachedSound_ctor__arr
.type m_Skymu_Sounds_SoundManager_CachedSound_ctor__arr, @function
m_Skymu_Sounds_SoundManager_CachedSound_ctor__arr:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_CachedSound_ctor_arr_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_CachedSound_ctor_arr_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Sounds_SoundManager_CachedSound_ctor_arr_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_CachedSound_ctor_arr_0007:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_CachedSound_ctor_arr_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_SoundManager_CachedSound_ctor_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_CachedSound_ctor_arr_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_CachedSound_ctor_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_CachedSound_ctor__arr, .-m_Skymu_Sounds_SoundManager_CachedSound_ctor__arr

.globl m_Skymu_Sounds_SoundManager_CachedSound_CreateReader__void
.type m_Skymu_Sounds_SoundManager_CachedSound_CreateReader__void, @function
m_Skymu_Sounds_SoundManager_CachedSound_CreateReader__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void_0006:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void_0007:
    lea .LN_1_m_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_IO_MemoryStream_ctor__arr_b
    mov %r12, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void_000c:
    lea .LN_2_m_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_NAudio_Wave_WaveFileReader_ctor__ref
    mov %r12, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void_0011:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_CachedSound_CreateReader__void, .-m_Skymu_Sounds_SoundManager_CachedSound_CreateReader__void

.globl m_Skymu_Sounds_SoundManager_c_cctor__void
.type m_Skymu_Sounds_SoundManager_c_cctor__void, @function
m_Skymu_Sounds_SoundManager_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_cctor_void_0000:
    lea .LN_0_m_Skymu_Sounds_SoundManager_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Sounds_SoundManager_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_cctor_void_0005:
    lea .LN_1_m_Skymu_Sounds_SoundManager_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Sounds_SoundManager_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_c_cctor__void, .-m_Skymu_Sounds_SoundManager_c_cctor__void

.globl m_Skymu_Sounds_SoundManager_c_ctor__void
.type m_Skymu_Sounds_SoundManager_c_ctor__void, @function
m_Skymu_Sounds_SoundManager_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Sounds_SoundManager_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_c_ctor__void, .-m_Skymu_Sounds_SoundManager_c_ctor__void

.globl m_Skymu_Sounds_SoundManager_c_Init_b_3_0__ref_ref
.type m_Skymu_Sounds_SoundManager_c_Init_b_3_0__ref_ref, @function
m_Skymu_Sounds_SoundManager_c_Init_b_3_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_Init_b_3_0_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_Init_b_3_0_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_PropertyChangedEventArgs_get_PropertyName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_Init_b_3_0_ref_ref_0006:
    lea .LS_0_m_Skymu_Sounds_SoundManager_c_Init_b_3_0_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_Init_b_3_0_ref_ref_000b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_Init_b_3_0_ref_ref_0010:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Sounds_SoundManager_c_Init_b_3_0_ref_ref_0017
.Lm_Skymu_Sounds_SoundManager_c_Init_b_3_0_ref_ref_0012:
    call m_Skymu_Sounds_SoundManager_LoadSounds__void
.Lm_Skymu_Sounds_SoundManager_c_Init_b_3_0_ref_ref_0017:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_c_Init_b_3_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_c_Init_b_3_0__ref_ref, .-m_Skymu_Sounds_SoundManager_c_Init_b_3_0__ref_ref

.globl m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_ctor__void
.type m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_ctor__void, @function
m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_ctor__void, .-m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_ctor__void

.globl m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0__void
.type m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0__void, @function
m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0000:
    lea .LN_0_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0005:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0007:
    lea .LN_1_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_NAudio_Wave_WaveOutEvent_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_000c:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0011:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0012:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0013:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0018:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Sounds_SoundManager_CachedSound_CreateReader__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_001d:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0022:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0023:
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0028:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0029:
    mov -40(%rbp), %rdi
    lea .LN_6_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_002e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Init__ref
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0033:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0034:
    mov -32(%rbp), %rdi
    lea .LN_7_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0039:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_003a:
    lea m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0040:
    lea .LN_8_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_NAudio_Wave_StoppedEventArgs_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0045:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_add_PlaybackStopped__gen
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_004a:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_004b:
    mov -32(%rbp), %rdi
    lea .LN_9_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0050:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Play__void
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0055:
    jmp .Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_005e
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0057:
    mov $10, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0059:
    mov -32(%rbp), %rdi
    call m_System_Threading_Thread_Sleep__i4
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_005e:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_005f:
    mov -32(%rbp), %rdi
    lea .LN_10_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0064:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_get_PlaybackState__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0069:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_006a:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_0057
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_006c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0__void, .-m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0__void

.globl m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_ctor__void
.type m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_ctor__void, @function
m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_ctor__void, .-m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_ctor__void

.globl m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1__ref_ref
.type m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1__ref_ref, @function
m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_Dispose__void
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref_000c:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref_0011:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Dispose__void
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref_0016:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1__ref_ref, .-m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1__ref_ref

.globl m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_ctor__void
.type m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_ctor__void, @function
m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_ctor__void, .-m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_ctor__void

.globl m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0__void
.type m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0__void, @function
m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationToken_get_IsCancellationRequested__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_000b:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_000e
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_000e:
    lea .LN_1_m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_NAudio_Wave_WaveOutEvent_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0013:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0014:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0015:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_001a:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Sounds_SoundManager_CachedSound_CreateReader__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_001f:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0020:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0021:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0022:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Init__ref
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0027:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0028:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Play__void
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_002d:
    jmp .Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0036
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_002f:
    mov $10, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0031:
    mov -40(%rbp), %rdi
    call m_System_Threading_Thread_Sleep__i4
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0036:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0037:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_get_PlaybackState__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_003c:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_003d:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_004c
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_003f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0040:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0045:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationToken_get_IsCancellationRequested__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_004a:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_002f
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_004c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_004d:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0052:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationToken_get_IsCancellationRequested__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0057:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_005f
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0059:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_005a:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Stop__void
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_005f:
    jmp .Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0075
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_0075:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0__void, .-m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0__void

.globl m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext__void
.type m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext__void, @function
m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0008:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_007f
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_000a:
    lea .LN_1_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_000f:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0010:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0012:
    mov -64(%rbp), %rdi
    lea .LN_2_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0017:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_001c:
    lea .LN_4_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0021:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0022:
    mov -64(%rbp), %rdi
    lea .LN_5_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0027:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0028:
    mov -72(%rbp), %rdi
    lea .LN_6_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_002d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Sounds_SoundManager_CachedSound_TryGetValue__gen_gen
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0032:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0039
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0034:
    jmp .Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_00bb
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0039:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_003a:
    lea m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0__void(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0040:
    lea .LN_7_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0045:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0046:
    mov -64(%rbp), %rdi
    lea .LN_8_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_004b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Run__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0050:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0055:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0056:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0058:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_005d:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_009b
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_005f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0060:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0061:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0062:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0063:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0068:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0069:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_006a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_006f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0070:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0075:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0077:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0078:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Sounds_SoundManager_PlayAsync_d_7__gen_gen
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_007d:
    jmp .Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_00ce
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_007f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0080:
    mov -56(%rbp), %rdi
    lea .LN_12_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0085:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0086:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0087:
    mov -56(%rbp), %rdi
    lea .LN_13_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_008c:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0092:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0093:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0094:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0095:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_0096:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_009b:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_009d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_00a2:
    jmp .Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_00bb
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_00bb:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_00bc:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_00be:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_15_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_00c3:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_00c4:
    mov -56(%rbp), %rdi
    lea .LN_16_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_00c9:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_00ce:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext__void, .-m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext__void

.globl m_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine__ref
.type m_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine__ref, @function
m_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine__ref, .-m_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine__ref

.globl m_Skymu_Sounds_SoundManager_Init__void
.type m_Skymu_Sounds_SoundManager_Init__void, @function
m_Skymu_Sounds_SoundManager_Init__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Sounds_SoundManager_Init_void_0000:
    lea .LN_0_m_Skymu_Sounds_SoundManager_Init_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_Init_void_0005:
    lea .LN_1_m_Skymu_Sounds_SoundManager_Init_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_Init_void_000a:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_Init_void_000b:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Sounds_SoundManager_Init_void_0024
.Lm_Skymu_Sounds_SoundManager_Init_void_000d:
    mov -16(%rbp), %rax
.Lm_Skymu_Sounds_SoundManager_Init_void_000e:
    lea .LN_2_m_Skymu_Sounds_SoundManager_Init_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_Init_void_0013:
    lea m_Skymu_Sounds_SoundManager_c_Init_b_3_0__ref_ref(%rip), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_Init_void_0019:
    lea .LN_3_m_Skymu_Sounds_SoundManager_Init_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rdx
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_PropertyChangedEventHandler_ctor__ref_v
    mov %r12, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_Init_void_001e:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_Init_void_001f:
    lea .LN_4_m_Skymu_Sounds_SoundManager_Init_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Sounds_SoundManager_Init_void_0024:
    mov -16(%rbp), %rsi
    mov -8(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged__ref
.Lm_Skymu_Sounds_SoundManager_Init_void_0029:
    call m_Skymu_Sounds_SoundManager_LoadSounds__void
.Lm_Skymu_Sounds_SoundManager_Init_void_002e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_Init_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_Init__void, .-m_Skymu_Sounds_SoundManager_Init__void

.globl m_Skymu_Sounds_SoundManager_LoadSounds__void
.type m_Skymu_Sounds_SoundManager_LoadSounds__void, @function
m_Skymu_Sounds_SoundManager_LoadSounds__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0000:
    lea .LN_0_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Sounds_SoundManager_CachedSound_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0005:
    lea .LN_1_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_000a:
    lea .LS_2_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_000f:
    lea .LS_3_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0014:
    lea .LS_4_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0019:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_001e:
    lea .LS_5_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0023:
    lea .LS_6_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0028:
    lea .LS_7_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_002d:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0032:
    lea .LS_8_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0037:
    lea .LS_9_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_003c:
    lea .LS_10_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0041:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0046:
    lea .LS_11_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_004b:
    lea .LS_12_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0050:
    lea .LS_13_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0055:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_005a:
    lea .LS_14_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_005f:
    lea .LS_15_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0064:
    lea .LS_16_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0069:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_006e:
    lea .LS_17_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0073:
    lea .LS_18_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0078:
    lea .LS_19_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_007d:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0082:
    lea .LS_20_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0087:
    lea .LS_21_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_008c:
    lea .LS_22_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0091:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_0096:
    lea .LS_23_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_009b:
    lea .LS_24_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00a0:
    lea .LS_25_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00a5:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00aa:
    lea .LS_26_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00af:
    lea .LS_27_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00b4:
    lea .LS_28_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00b9:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00be:
    lea .LS_29_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00c3:
    lea .LS_30_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00c8:
    lea .LS_31_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00cd:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00d2:
    lea .LS_32_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00d7:
    lea .LS_33_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00dc:
    lea .LS_34_m_Skymu_Sounds_SoundManager_LoadSounds_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00e1:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_00e6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_LoadSounds_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_LoadSounds__void, .-m_Skymu_Sounds_SoundManager_LoadSounds__void

.globl m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.type m_Skymu_Sounds_SoundManager_Load__ref_ref_ref, @function
m_Skymu_Sounds_SoundManager_Load__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0001:
    lea .LS_0_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0006:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_000b:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0022
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_000d:
    call m_Skymu_Preferences_Settings_get_SoundPack__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0012:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0013:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0015:
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_001b:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0020:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0022:
    lea .LS_1_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0027:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0028:
    lea .LS_2_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_002d:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_002e:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref_ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0033:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0034:
    lea .LN_3_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0039:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_003a:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_003b:
    mov -72(%rbp), %rdi
    call m_System_Windows_Application_GetResourceStream__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0040:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0041:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0042:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0047
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0044:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0045:
    jmp .Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_004d
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0047:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0048:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Resources_StreamResourceInfo_get_Stream__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_004d:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_008a
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_004f:
    lea .LN_4_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_IO_MemoryStream_ctor__void
    mov %r12, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0054:
    mov -72(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0055:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0056:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Resources_StreamResourceInfo_get_Stream__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_005b:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_005c:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_CopyTo__ref
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0061:
    lea .LN_5_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0066:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0067:
    mov -80(%rbp), %rdi
    call m_System_IO_Path_GetFileNameWithoutExtension__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_006c:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_006d:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_MemoryStream_ToArray__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0072:
    lea .LN_6_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Sounds_SoundManager_CachedSound_ctor__arr
    mov %r12, -88(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0077:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Sounds_SoundManager_CachedSound_set_Item__gen_gen
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_007c:
    jmp .Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0088
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0088:
    jmp .Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_00b1
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_008a:
    jmp .Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_008f
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_008f:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0090:
    lea .LN_7_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_0095:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_String_op_Inequality__ref_ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_009a:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_00b1
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_009c:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_009d:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_009e:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_String_op_Inequality__ref_ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_00a3:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_00b1
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_00a5:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_00a6:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_00a7:
    lea .LS_8_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_00ac:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Load__ref_ref_ref
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_00b1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_Load_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_Load__ref_ref_ref, .-m_Skymu_Sounds_SoundManager_Load__ref_ref_ref

.globl m_Skymu_Sounds_SoundManager_Play__ref
.type m_Skymu_Sounds_SoundManager_Play__ref, @function
m_Skymu_Sounds_SoundManager_Play__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_0000:
    lea .LN_0_m_Skymu_Sounds_SoundManager_Play_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_0005:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_0006:
    lea .LN_1_m_Skymu_Sounds_SoundManager_Play_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_000c:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_000d:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Sounds_SoundManager_Play_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_0012:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Sounds_SoundManager_CachedSound_TryGetValue__gen_gen
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_0017:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Sounds_SoundManager_Play_ref_001a
.Lm_Skymu_Sounds_SoundManager_Play_ref_0019:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_Play_ref_001a:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_001b:
    lea m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0__void(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_0021:
    lea .LN_3_m_Skymu_Sounds_SoundManager_Play_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_0026:
    mov -32(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Run__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_Play_ref_002b:
    mov -32(%rbp), %rax
.Lm_Skymu_Sounds_SoundManager_Play_ref_002c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_Play_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_Play__ref, .-m_Skymu_Sounds_SoundManager_Play__ref

.globl m_Skymu_Sounds_SoundManager_PlayAsync__ref_ref
.type m_Skymu_Sounds_SoundManager_PlayAsync__ref_ref, @function
m_Skymu_Sounds_SoundManager_PlayAsync__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_Sounds_SoundManager_PlayAsync_d_7__gen
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_0034:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_0039:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_003e:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_PlayAsync_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_PlayAsync__ref_ref, .-m_Skymu_Sounds_SoundManager_PlayAsync__ref_ref

.globl m_Skymu_Sounds_SoundManager_PlayLoop__ref
.type m_Skymu_Sounds_SoundManager_PlayLoop__ref, @function
m_Skymu_Sounds_SoundManager_PlayLoop__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0001:
    mov -48(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_StopPlayback__ref
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0006:
    lea .LN_0_m_Skymu_Sounds_SoundManager_PlayLoop_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_000c:
    lea -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_000e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Sounds_SoundManager_CachedSound_TryGetValue__gen_gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0013:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0016
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0016:
    lea .LN_1_m_Skymu_Sounds_SoundManager_PlayLoop_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_NAudio_Wave_WaveOutEvent_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_001b:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_001c:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_001d:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Sounds_SoundManager_CachedSound_CreateReader__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0022:
    lea .LN_2_m_Skymu_Sounds_SoundManager_PlayLoop_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Sounds_LoopStream_ctor__ref
    mov %r12, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0027:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0028:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0029:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_002a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Init__ref
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_002f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0030:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Play__void
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0035:
    lea .LN_3_m_Skymu_Sounds_SoundManager_PlayLoop_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_003a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_003b:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_003c:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_set_Item__gen_gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_0041:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_PlayLoop_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_PlayLoop__ref, .-m_Skymu_Sounds_SoundManager_PlayLoop__ref

.globl m_Skymu_Sounds_SoundManager_StopPlayback__ref
.type m_Skymu_Sounds_SoundManager_StopPlayback__ref, @function
m_Skymu_Sounds_SoundManager_StopPlayback__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_0000:
    lea .LN_0_m_Skymu_Sounds_SoundManager_StopPlayback_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_0006:
    lea -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_TryRemove__gen_gen
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_000d:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_001b
.Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_000f:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_0010:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Stop__void
.Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_0015:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_0016:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Dispose__void
.Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_StopPlayback_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_StopPlayback__ref, .-m_Skymu_Sounds_SoundManager_StopPlayback__ref

.globl m_Skymu_Sounds_SoundManager_PlaySynchronous__ref
.type m_Skymu_Sounds_SoundManager_PlaySynchronous__ref, @function
m_Skymu_Sounds_SoundManager_PlaySynchronous__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0000:
    lea .LN_0_m_Skymu_Sounds_SoundManager_PlaySynchronous_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0006:
    lea -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0008:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Sounds_SoundManager_CachedSound_TryGetValue__gen_gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_000d:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0010
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_000f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0010:
    lea .LN_1_m_Skymu_Sounds_SoundManager_PlaySynchronous_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_NAudio_Wave_WaveOutEvent_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0015:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0017:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Sounds_SoundManager_CachedSound_CreateReader__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_001d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_001e:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_001f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Init__ref
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0025:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Play__void
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_002a:
    jmp .Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0033
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_002c:
    mov $10, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_002e:
    mov -48(%rbp), %rdi
    call m_System_Threading_Thread_Sleep__i4
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0033:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0034:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_get_PlaybackState__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0039:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_003a:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_002c
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_003c:
    jmp .Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0052
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_0052:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_PlaySynchronous_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_PlaySynchronous__ref, .-m_Skymu_Sounds_SoundManager_PlaySynchronous__ref

.globl m_Skymu_Sounds_SoundManager_cctor__void
.type m_Skymu_Sounds_SoundManager_cctor__void, @function
m_Skymu_Sounds_SoundManager_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Sounds_SoundManager_cctor_void_0000:
    lea .LN_0_m_Skymu_Sounds_SoundManager_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Sounds_SoundManager_CachedSound_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_cctor_void_0005:
    lea .LN_1_m_Skymu_Sounds_SoundManager_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Sounds_SoundManager_cctor_void_000a:
    lea .LN_2_m_Skymu_Sounds_SoundManager_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_NAudio_Wave_WaveOutEvent_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Sounds_SoundManager_cctor_void_000f:
    lea .LN_3_m_Skymu_Sounds_SoundManager_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Sounds_SoundManager_cctor_void_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_SoundManager_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_SoundManager_cctor__void, .-m_Skymu_Sounds_SoundManager_cctor__void

.globl m_Skymu_Sounds_LoopStream_ctor__ref
.type m_Skymu_Sounds_LoopStream_ctor__ref, @function
m_Skymu_Sounds_LoopStream_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Sounds_LoopStream_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_LoopStream_ctor_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveStream_ctor__void
.Lm_Skymu_Sounds_LoopStream_ctor_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_LoopStream_ctor_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_LoopStream_ctor_ref_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_LoopStream_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Sounds_LoopStream_ctor_ref_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_LoopStream_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_LoopStream_ctor__ref, .-m_Skymu_Sounds_LoopStream_ctor__ref

.globl m_Skymu_Sounds_LoopStream_get_WaveFormat__void
.type m_Skymu_Sounds_LoopStream_get_WaveFormat__void, @function
m_Skymu_Sounds_LoopStream_get_WaveFormat__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_LoopStream_get_WaveFormat_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_LoopStream_get_WaveFormat_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_LoopStream_get_WaveFormat_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_LoopStream_get_WaveFormat_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveStream_get_WaveFormat__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_LoopStream_get_WaveFormat_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_LoopStream_get_WaveFormat_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_LoopStream_get_WaveFormat__void, .-m_Skymu_Sounds_LoopStream_get_WaveFormat__void

.globl m_Skymu_Sounds_LoopStream_get_Length__void
.type m_Skymu_Sounds_LoopStream_get_Length__void, @function
m_Skymu_Sounds_LoopStream_get_Length__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_LoopStream_get_Length_void_0000:
    movabs $9223372036854775807, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_LoopStream_get_Length_void_0009:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_LoopStream_get_Length_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_LoopStream_get_Length__void, .-m_Skymu_Sounds_LoopStream_get_Length__void

.globl m_Skymu_Sounds_LoopStream_get_Position__void
.type m_Skymu_Sounds_LoopStream_get_Position__void, @function
m_Skymu_Sounds_LoopStream_get_Position__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Sounds_LoopStream_get_Position_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_LoopStream_get_Position_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_LoopStream_get_Position_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_LoopStream_get_Position_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_get_Position__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Sounds_LoopStream_get_Position_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_LoopStream_get_Position_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_LoopStream_get_Position__void, .-m_Skymu_Sounds_LoopStream_get_Position__void

.globl m_Skymu_Sounds_LoopStream_set_Position__i8
.type m_Skymu_Sounds_LoopStream_set_Position__i8, @function
m_Skymu_Sounds_LoopStream_set_Position__i8:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Sounds_LoopStream_set_Position_i8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_LoopStream_set_Position_i8_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_LoopStream_set_Position_i8(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_LoopStream_set_Position_i8_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_LoopStream_set_Position_i8_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_set_Position__i8
.Lm_Skymu_Sounds_LoopStream_set_Position_i8_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_LoopStream_set_Position_i8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_LoopStream_set_Position__i8, .-m_Skymu_Sounds_LoopStream_set_Position__i8

.globl m_Skymu_Sounds_LoopStream_Read__arr_i4_i4
.type m_Skymu_Sounds_LoopStream_Read__arr_i4_i4, @function
m_Skymu_Sounds_LoopStream_Read__arr_i4_i4:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0000:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0001:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0002:
    jmp .Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_002d
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0004:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0005:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_LoopStream_Read_arr_i4_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_000a:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_000c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_000d:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_000e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_000f:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0010:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0011:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_Read__arr_i4_i4
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0016:
    mov -64(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0017:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0018:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0029
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_001a:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_001b:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Sounds_LoopStream_Read_arr_i4_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0020:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0021:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0022:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_set_Position__i8
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0027:
    jmp .Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_002d
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0029:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_002a:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_002b:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_002c:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_002d:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_002e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_002f:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0004
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0031:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_0032:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_LoopStream_Read_arr_i4_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_LoopStream_Read__arr_i4_i4, .-m_Skymu_Sounds_LoopStream_Read__arr_i4_i4

.globl m_Skymu_Sounds_LoopStream_Dispose__b
.type m_Skymu_Sounds_LoopStream_Dispose__b, @function
m_Skymu_Sounds_LoopStream_Dispose__b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Sounds_LoopStream_Dispose_b_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_LoopStream_Dispose_b_0001:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Sounds_LoopStream_Dispose_b_000e
.Lm_Skymu_Sounds_LoopStream_Dispose_b_0003:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_LoopStream_Dispose_b_0004:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Sounds_LoopStream_Dispose_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_LoopStream_Dispose_b_0009:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_Dispose__void
.Lm_Skymu_Sounds_LoopStream_Dispose_b_000e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Sounds_LoopStream_Dispose_b_000f:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Sounds_LoopStream_Dispose_b_0010:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_Dispose__b
.Lm_Skymu_Sounds_LoopStream_Dispose_b_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Sounds_LoopStream_Dispose_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Sounds_LoopStream_Dispose__b, .-m_Skymu_Sounds_LoopStream_Dispose__b

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Sounds_SoundManager_CachedSound_ctor_arr:
    .asciz "Data"

.LN_0_m_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void:
    .asciz "Data"

.LN_1_m_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void:
    .asciz "System.IO.MemoryStream"

.LN_2_m_Skymu_Sounds_SoundManager_CachedSound_CreateReader_void:
    .asciz "NAudio.Wave.WaveFileReader"

.LN_0_m_Skymu_Sounds_SoundManager_c_cctor_void:
    .asciz "Skymu.Sounds.SoundManager/'<>c'"

.LN_1_m_Skymu_Sounds_SoundManager_c_cctor_void:
    .asciz "<>9"

.LS_0_m_Skymu_Sounds_SoundManager_c_Init_b_3_0_ref_ref:
    .short 83, 111, 117, 110, 100, 80, 97, 99, 107

.LN_0_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void:
    .asciz "Skymu.Sounds.SoundManager/'<>c__DisplayClass6_1'"

.LN_1_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void:
    .asciz "NAudio.Wave.WaveOutEvent"

.LN_2_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void:
    .asciz "output"

.LN_3_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void:
    .asciz "snd"

.LN_4_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void:
    .asciz "reader"

.LN_5_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void:
    .asciz "output"

.LN_6_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void:
    .asciz "reader"

.LN_7_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void:
    .asciz "output"

.LN_8_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void:
    .asciz "NAudio.Wave.StoppedEventArgs>"

.LN_9_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void:
    .asciz "output"

.LN_10_m_Skymu_Sounds_SoundManager_c_DisplayClass6_0_Play_b_0_void:
    .asciz "output"

.LN_0_m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref:
    .asciz "reader"

.LN_1_m_Skymu_Sounds_SoundManager_c_DisplayClass6_1_Play_b_1_ref_ref:
    .asciz "output"

.LN_0_m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void:
    .asciz "token"

.LN_1_m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void:
    .asciz "NAudio.Wave.WaveOutEvent"

.LN_2_m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void:
    .asciz "snd"

.LN_3_m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void:
    .asciz "token"

.LN_4_m_Skymu_Sounds_SoundManager_c_DisplayClass7_0_PlayAsync_b_0_void:
    .asciz "token"

.LN_0_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "Skymu.Sounds.SoundManager/'<>c__DisplayClass7_0'"

.LN_2_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "token"

.LN_3_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "token"

.LN_4_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "cached_sounds"

.LN_5_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "key"

.LN_6_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "snd"

.LN_7_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "System.Action"

.LN_8_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "token"

.LN_9_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "<>u__1"

.LN_11_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "<>t__builder"

.LN_12_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "<>u__1"

.LN_13_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "<>u__1"

.LN_14_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "<>1__state"

.LN_15_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "<>1__state"

.LN_16_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Sounds_SoundManager_PlayAsync_d_7_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Sounds_SoundManager_Init_void:
    .asciz "Default"

.LN_1_m_Skymu_Sounds_SoundManager_Init_void:
    .asciz "<>9__3_0"

.LN_2_m_Skymu_Sounds_SoundManager_Init_void:
    .asciz "<>9"

.LN_3_m_Skymu_Sounds_SoundManager_Init_void:
    .asciz "System.ComponentModel.PropertyChangedEventHandler"

.LN_4_m_Skymu_Sounds_SoundManager_Init_void:
    .asciz "<>9__3_0"

.LN_0_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .asciz "Skymu.Sounds.SoundManager/CachedSound>"

.LN_1_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .asciz "cached_sounds"

.LS_2_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 73, 77, 95, 83, 69, 78, 84, 46, 87, 65, 86

.LS_3_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 0

.LS_4_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 83, 107, 121, 109, 117

.LS_5_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 73, 77, 46, 87, 65, 86

.LS_6_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 0

.LS_7_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 83, 107, 121, 109, 117

.LS_8_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 67, 65, 76, 76, 95, 69, 82, 82, 79, 82, 49, 46, 87, 65, 86

.LS_9_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 0

.LS_10_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 83, 107, 121, 109, 117

.LS_11_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 67, 65, 76, 76, 95, 73, 78, 73, 84, 46, 87, 65, 86

.LS_12_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 0

.LS_13_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 83, 107, 121, 109, 117

.LS_14_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 67, 65, 76, 76, 95, 79, 85, 84, 46, 87, 65, 86

.LS_15_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 0

.LS_16_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 83, 107, 121, 109, 117

.LS_17_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 67, 65, 76, 76, 95, 82, 69, 67, 79, 78, 78, 69, 67, 84, 95, 70, 82, 79, 78, 84, 46, 87, 65, 86

.LS_18_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 0

.LS_19_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 83, 107, 121, 109, 117

.LS_20_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 67, 65, 76, 76, 95, 73, 78, 46, 87, 65, 86

.LS_21_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 0

.LS_22_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 83, 107, 121, 109, 117

.LS_23_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 72, 65, 78, 71, 85, 80, 46, 87, 65, 86

.LS_24_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 0

.LS_25_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 83, 107, 121, 109, 117

.LS_26_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 76, 79, 71, 73, 78, 46, 87, 65, 86

.LS_27_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 0

.LS_28_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 83, 107, 121, 109, 117

.LS_29_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 76, 79, 71, 79, 85, 84, 46, 87, 65, 86

.LS_30_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 0

.LS_31_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 83, 107, 121, 109, 117

.LS_32_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 66, 85, 83, 89, 46, 87, 65, 86

.LS_33_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 0

.LS_34_m_Skymu_Sounds_SoundManager_LoadSounds_void:
    .short 83, 107, 121, 109, 117

.LS_0_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref:
    .short 0

.LS_1_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref:
    .short 112, 97, 99, 107, 58, 47, 47, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 58, 44, 44, 44, 47, 83, 111, 117, 110, 100, 115, 47

.LS_2_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref:
    .short 47

.LN_3_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref:
    .asciz "System.Uri"

.LN_4_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref:
    .asciz "System.IO.MemoryStream"

.LN_5_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref:
    .asciz "cached_sounds"

.LN_6_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref:
    .asciz "Skymu.Sounds.SoundManager/CachedSound"

.LN_7_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref:
    .asciz "Empty"

.LS_8_m_Skymu_Sounds_SoundManager_Load_ref_ref_ref:
    .short 83, 107, 121, 109, 117

.LN_0_m_Skymu_Sounds_SoundManager_Play_ref:
    .asciz "Skymu.Sounds.SoundManager/'<>c__DisplayClass6_0'"

.LN_1_m_Skymu_Sounds_SoundManager_Play_ref:
    .asciz "cached_sounds"

.LN_2_m_Skymu_Sounds_SoundManager_Play_ref:
    .asciz "snd"

.LN_3_m_Skymu_Sounds_SoundManager_Play_ref:
    .asciz "System.Action"

.LN_0_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref:
    .asciz "key"

.LN_2_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref:
    .asciz "token"

.LN_3_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref:
    .asciz "<>1__state"

.LN_4_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref:
    .asciz "<>t__builder"

.LN_5_m_Skymu_Sounds_SoundManager_PlayAsync_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Sounds_SoundManager_PlayLoop_ref:
    .asciz "cached_sounds"

.LN_1_m_Skymu_Sounds_SoundManager_PlayLoop_ref:
    .asciz "NAudio.Wave.WaveOutEvent"

.LN_2_m_Skymu_Sounds_SoundManager_PlayLoop_ref:
    .asciz "Skymu.Sounds.LoopStream"

.LN_3_m_Skymu_Sounds_SoundManager_PlayLoop_ref:
    .asciz "loops"

.LN_0_m_Skymu_Sounds_SoundManager_StopPlayback_ref:
    .asciz "loops"

.LN_0_m_Skymu_Sounds_SoundManager_PlaySynchronous_ref:
    .asciz "cached_sounds"

.LN_1_m_Skymu_Sounds_SoundManager_PlaySynchronous_ref:
    .asciz "NAudio.Wave.WaveOutEvent"

.LN_0_m_Skymu_Sounds_SoundManager_cctor_void:
    .asciz "Skymu.Sounds.SoundManager/CachedSound>"

.LN_1_m_Skymu_Sounds_SoundManager_cctor_void:
    .asciz "cached_sounds"

.LN_2_m_Skymu_Sounds_SoundManager_cctor_void:
    .asciz "NAudio.Wave.WaveOutEvent>"

.LN_3_m_Skymu_Sounds_SoundManager_cctor_void:
    .asciz "loops"

.LN_0_m_Skymu_Sounds_LoopStream_ctor_ref:
    .asciz "source"

.LN_0_m_Skymu_Sounds_LoopStream_get_WaveFormat_void:
    .asciz "source"

.LN_0_m_Skymu_Sounds_LoopStream_get_Position_void:
    .asciz "source"

.LN_0_m_Skymu_Sounds_LoopStream_set_Position_i8:
    .asciz "source"

.LN_0_m_Skymu_Sounds_LoopStream_Read_arr_i4_i4:
    .asciz "source"

.LN_1_m_Skymu_Sounds_LoopStream_Read_arr_i4_i4:
    .asciz "source"

.LN_0_m_Skymu_Sounds_LoopStream_Dispose_b:
    .asciz "source"

    .section .note.GNU-stack,"",@progbits
