# Converters/FormatFullActionMessageConverter.cs
    .text

.globl m_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle__void
.type m_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle__void, @function
m_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle__void, .-m_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle__void

.globl m_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle__ref
.type m_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle__ref, @function
m_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle__ref, .-m_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle__ref

.globl m_Skymu_Converters_FormatFullActionMessageConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_FormatFullActionMessageConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_FormatFullActionMessageConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0001:
    mov -80(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0006:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0007:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0008:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0010
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_000a:
    lea .LN_0_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_000f:
    mov -88(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0010:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0011:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0016:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0018:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_001d:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_Skymu_Formatting_Formatter_Parse__ref_b_ref
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0022:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0024:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_get_Inlines__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0029:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_002a:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_get_Inlines__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_002f:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Documents_InlineCollection_get_FirstInline__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0034:
    lea .LN_1_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Documents_InlineUIContainer_ctor__void
    mov %r12, -104(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0039:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_003a:
    lea .LN_2_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Controls_Border_ctor__void
    mov %r12, -112(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_003f:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0040:
    movsd .LD_3_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0049:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Width__f8
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_004e:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Documents_InlineUIContainer_set_Child__ref
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0053:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Documents_Inline_InsertBefore__gen_gen
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0058:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0059:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_get_Inlines__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_005e:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_005f:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_get_Inlines__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0064:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Documents_InlineCollection_get_FirstInline__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0069:
    lea .LN_4_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Documents_Run_ctor__void
    mov %r12, -104(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_006e:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_006f:
    mov -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0070:
    mov -56(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0071:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0076:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_007b:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Documents_Run_set_Text__ref
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0080:
    mov -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0081:
    lea .LN_5_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Converters_SenderToColorConverter_ctor__void
    mov %r12, -112(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0086:
    mov $2, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0087:
    mov -120(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_008c:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_008d:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_008e:
    mov -56(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_008f:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0094:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_0099:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_009a:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_009b:
    mov $1, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_009c:
    mov -56(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_009d:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_IsForwarded__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00a2:
    mov -128(%rbp), %rdi
    lea .LN_6_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -128(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00a7:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00a8:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00a9:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00aa:
    xor %eax, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00ab:
    mov -128(%rbp), %r8
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Converters_SenderToColorConverter_Convert__arr_ref_ref_ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00b0:
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00b5:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Documents_TextElement_set_Foreground__ref
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00ba:
    mov -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00bb:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Documents_Inline_InsertBefore__gen_gen
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00c0:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_00c1:
    mov -88(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_FormatFullActionMessageConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_FormatFullActionMessageConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_FormatFullActionMessageConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_FormatFullActionMessageConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_FormatFullActionMessageConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_ConvertBack_ref_ref_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_FormatFullActionMessageConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotSupportedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_ConvertBack_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_FormatFullActionMessageConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_FormatFullActionMessageConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_FormatFullActionMessageConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_FormatFullActionMessageConverter_ctor__void
.type m_Skymu_Converters_FormatFullActionMessageConverter_ctor__void, @function
m_Skymu_Converters_FormatFullActionMessageConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_FormatFullActionMessageConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_FormatFullActionMessageConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_FormatFullActionMessageConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_FormatFullActionMessageConverter_ctor__void, .-m_Skymu_Converters_FormatFullActionMessageConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Converters_FormatFullActionMessageConverter_get_ViewerStyle_void:
    .asciz "<ViewerStyle>k__BackingField"

.LN_0_m_Skymu_Converters_FormatFullActionMessageConverter_set_ViewerStyle_ref:
    .asciz "<ViewerStyle>k__BackingField"

.LN_0_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref:
    .asciz "UnsetValue"

.LN_1_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Windows.Documents.InlineUIContainer"

.LN_2_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Windows.Controls.Border"

.LD_3_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref:
    .double 4

.LN_4_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Windows.Documents.Run"

.LN_5_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref:
    .asciz "Skymu.Converters.SenderToColorConverter"

.LN_6_m_Skymu_Converters_FormatFullActionMessageConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Boolean"

.LN_0_m_Skymu_Converters_FormatFullActionMessageConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "System.NotSupportedException"

    .section .note.GNU-stack,"",@progbits
