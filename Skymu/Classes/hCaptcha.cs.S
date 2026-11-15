# Classes/hCaptcha.cs
    .text

.globl m_Skymu_Captcha_hCaptcha_ctor__void
.type m_Skymu_Captcha_hCaptcha_ctor__void, @function
m_Skymu_Captcha_hCaptcha_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Captcha_hCaptcha_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Captcha_hCaptcha_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Captcha_hCaptcha_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Captcha_hCaptcha_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Captcha_hCaptcha_ctor__void, .-m_Skymu_Captcha_hCaptcha_ctor__void

    .globl m_Skymu_Captcha_hCaptcha_ShowPrompt__ref_ref
    .type m_Skymu_Captcha_hCaptcha_ShowPrompt__ref_ref, @function
m_Skymu_Captcha_hCaptcha_ShowPrompt__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Captcha_hCaptcha_ShowPrompt_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Captcha_hCaptcha_ShowPrompt__ref_ref, .-m_Skymu_Captcha_hCaptcha_ShowPrompt__ref_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LSTUB_m_Skymu_Captcha_hCaptcha_ShowPrompt_ref_ref:
    .asciz "Skymu.Captcha.hCaptcha::ShowPrompt  [constructor with 17 arguments (limit 5)]"

    .section .note.GNU-stack,"",@progbits
