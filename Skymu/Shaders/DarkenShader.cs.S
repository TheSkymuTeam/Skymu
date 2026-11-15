# Shaders/DarkenShader.cs
    .text

.globl m_Skymu_Shaders_DarkenShader_ctor__void
.type m_Skymu_Shaders_DarkenShader_ctor__void, @function
m_Skymu_Shaders_DarkenShader_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Shaders_DarkenShader_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Shaders_DarkenShader_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Effects_ShaderEffect_ctor__void
.Lm_Skymu_Shaders_DarkenShader_ctor_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Shaders_DarkenShader_ctor_void_0007:
    lea .LN_0_m_Skymu_Shaders_DarkenShader_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Shaders_DarkenShader_ctor_void_000c:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Effects_ShaderEffect_set_PixelShader__ref
.Lm_Skymu_Shaders_DarkenShader_ctor_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Shaders_DarkenShader_ctor_void_0012:
    lea .LN_1_m_Skymu_Shaders_DarkenShader_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Shaders_DarkenShader_ctor_void_0017:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Effects_ShaderEffect_UpdateShaderValue__ref
.Lm_Skymu_Shaders_DarkenShader_ctor_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Shaders_DarkenShader_ctor_void_001d:
    lea .LN_2_m_Skymu_Shaders_DarkenShader_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Shaders_DarkenShader_ctor_void_0022:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Effects_ShaderEffect_UpdateShaderValue__ref
.Lm_Skymu_Shaders_DarkenShader_ctor_void_0027:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Shaders_DarkenShader_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Shaders_DarkenShader_ctor__void, .-m_Skymu_Shaders_DarkenShader_ctor__void

.globl m_Skymu_Shaders_DarkenShader_get_Input__void
.type m_Skymu_Shaders_DarkenShader_get_Input__void, @function
m_Skymu_Shaders_DarkenShader_get_Input__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Shaders_DarkenShader_get_Input_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Shaders_DarkenShader_get_Input_void_0001:
    lea .LN_0_m_Skymu_Shaders_DarkenShader_get_Input_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Shaders_DarkenShader_get_Input_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Shaders_DarkenShader_get_Input_void_000b:
.Lm_Skymu_Shaders_DarkenShader_get_Input_void_0010:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Shaders_DarkenShader_get_Input_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Shaders_DarkenShader_get_Input__void, .-m_Skymu_Shaders_DarkenShader_get_Input__void

.globl m_Skymu_Shaders_DarkenShader_set_Input__ref
.type m_Skymu_Shaders_DarkenShader_set_Input__ref, @function
m_Skymu_Shaders_DarkenShader_set_Input__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Shaders_DarkenShader_set_Input_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Shaders_DarkenShader_set_Input_ref_0001:
    lea .LN_0_m_Skymu_Shaders_DarkenShader_set_Input_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Shaders_DarkenShader_set_Input_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Shaders_DarkenShader_set_Input_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_Shaders_DarkenShader_set_Input_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Shaders_DarkenShader_set_Input_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Shaders_DarkenShader_set_Input__ref, .-m_Skymu_Shaders_DarkenShader_set_Input__ref

.globl m_Skymu_Shaders_DarkenShader_get_Intensity__void
.type m_Skymu_Shaders_DarkenShader_get_Intensity__void, @function
m_Skymu_Shaders_DarkenShader_get_Intensity__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Shaders_DarkenShader_get_Intensity_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Shaders_DarkenShader_get_Intensity_void_0001:
    lea .LN_0_m_Skymu_Shaders_DarkenShader_get_Intensity_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Shaders_DarkenShader_get_Intensity_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Shaders_DarkenShader_get_Intensity_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_Shaders_DarkenShader_get_Intensity_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Shaders_DarkenShader_get_Intensity_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Shaders_DarkenShader_get_Intensity__void, .-m_Skymu_Shaders_DarkenShader_get_Intensity__void

.globl m_Skymu_Shaders_DarkenShader_set_Intensity__f8
.type m_Skymu_Shaders_DarkenShader_set_Intensity__f8, @function
m_Skymu_Shaders_DarkenShader_set_Intensity__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Shaders_DarkenShader_set_Intensity_f8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Shaders_DarkenShader_set_Intensity_f8_0001:
    lea .LN_0_m_Skymu_Shaders_DarkenShader_set_Intensity_f8(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Shaders_DarkenShader_set_Intensity_f8_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Shaders_DarkenShader_set_Intensity_f8_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Shaders_DarkenShader_set_Intensity_f8(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_Shaders_DarkenShader_set_Intensity_f8_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_Shaders_DarkenShader_set_Intensity_f8_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Shaders_DarkenShader_set_Intensity_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Shaders_DarkenShader_set_Intensity__f8, .-m_Skymu_Shaders_DarkenShader_set_Intensity__f8

    .globl m_Skymu_Shaders_DarkenShader_cctor__void
    .type m_Skymu_Shaders_DarkenShader_cctor__void, @function
m_Skymu_Shaders_DarkenShader_cctor__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Shaders_DarkenShader_cctor_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Shaders_DarkenShader_cctor__void, .-m_Skymu_Shaders_DarkenShader_cctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Shaders_DarkenShader_ctor_void:
    .asciz "_shader"

.LN_1_m_Skymu_Shaders_DarkenShader_ctor_void:
    .asciz "InputProperty"

.LN_2_m_Skymu_Shaders_DarkenShader_ctor_void:
    .asciz "IntensityProperty"

.LN_0_m_Skymu_Shaders_DarkenShader_get_Input_void:
    .asciz "InputProperty"

.LN_0_m_Skymu_Shaders_DarkenShader_set_Input_ref:
    .asciz "InputProperty"

.LN_0_m_Skymu_Shaders_DarkenShader_get_Intensity_void:
    .asciz "IntensityProperty"

.LN_0_m_Skymu_Shaders_DarkenShader_set_Intensity_f8:
    .asciz "IntensityProperty"

.LN_1_m_Skymu_Shaders_DarkenShader_set_Intensity_f8:
    .asciz "System.Double"

.LSTUB_m_Skymu_Shaders_DarkenShader_cctor_void:
    .asciz "Skymu.Shaders.DarkenShader::.cctor  [stack underflow at IL_0015 (stsfld): depth 0 < pops 1]"

    .section .note.GNU-stack,"",@progbits
