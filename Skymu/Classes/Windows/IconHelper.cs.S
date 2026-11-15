# Classes/Windows/IconHelper.cs
    .text

.globl m_Skymu_Native_Windows_IconHelper_CropSheet__ref_i4
.type m_Skymu_Native_Windows_IconHelper_CropSheet__ref_i4, @function
m_Skymu_Native_Windows_IconHelper_CropSheet__ref_i4:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0001:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0002:
    lea .LN_0_m_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0007:
    mov -80(%rbp), %rdi
    call m_System_Windows_Application_GetResourceStream__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_000c:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_000d:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_000e:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0012
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0010:
    xor %eax, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0011:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0012:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0013:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Resources_StreamResourceInfo_get_Stream__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0018:
    lea .LN_1_m_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Drawing_Bitmap_ctor__ref
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_001d:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_001e:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_001f:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Image_get_Height__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0024:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0025:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0026:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0027:
    mov $2498570, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_002c:
    lea .LN_2_m_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Drawing_Bitmap_ctor__i4_i4_v
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0031:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0032:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0033:
    mov -80(%rbp), %rdi
    call m_System_Drawing_Graphics_FromImage__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0038:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_003a:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_003c:
    call m_System_Drawing_Color_get_Transparent__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0041:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Graphics_Clear__v
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0046:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0048:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0049:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Graphics_set_CompositingMode__v
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_004e:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0050:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0051:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0052:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0053:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0054:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0055:
    lea .LN_3_m_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -120(%rbp), %r8
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Drawing_Rectangle_ctor__i4_i4_i4_i4
    mov %r12, -96(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_005a:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_005b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_005c:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_005d:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_005e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_005f:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0060:
    lea .LN_4_m_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -128(%rbp), %r8
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Drawing_Rectangle_ctor__i4_i4_i4_i4
    mov %r12, -104(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0065:
    mov $2, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0066:
    mov -112(%rbp), %r8
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Graphics_DrawImage__ref_v_v_v
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_006b:
    jmp .Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0079
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0079:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_007a:
    mov -80(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_007c:
    jmp .Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0088
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_0088:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_008a:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_IconHelper_CropSheet__ref_i4, .-m_Skymu_Native_Windows_IconHelper_CropSheet__ref_i4

.globl m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap__ref
.type m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap__ref, @function
m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap__ref:
    push %rbp
    mov %rsp, %rbp
    sub $176, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0000:
    lea -56(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0002:
    mov -120(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0008:
    lea -56(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_000a:
    call m_System_Runtime_InteropServices_Marshal_SizeOf_valuetype_Skymu_Native_Windows_IconHelper_BITMAPINFO__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_000f:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0014:
    lea -56(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0017:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Image_get_Width__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_001c:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0021:
    lea -56(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0023:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0024:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Image_get_Height__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0029:
    mov -128(%rbp), %rax
    neg %eax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_002a:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rdi
    lea .LN_2_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_002f:
    lea -56(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0031:
    mov $1, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0032:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rdi
    lea .LN_3_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0037:
    lea -56(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0039:
    mov $32, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_003b:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rdi
    lea .LN_4_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0040:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0042:
    mov -128(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0043:
    lea .LN_5_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0048:
    lea -24(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_004a:
    mov $0, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_004b:
    lea -32(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_004d:
    lea .LN_6_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0052:
    mov $0, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0053:
    mov -168(%rbp), %r9
    mov -160(%rbp), %r8
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_Skymu_Native_Windows_IconHelper_CreateDIBSection__v_v_u4_v_v_u4
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0058:
    mov -128(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0059:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_005a:
    lea .LN_7_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_005f:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_IntPtr_op_Equality__v_v
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0064:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_006c
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0066:
    lea .LN_8_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_006b:
    mov -128(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_006c:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_006d:
    mov $0, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_006e:
    mov $0, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_006f:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0070:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Image_get_Width__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0075:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0076:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Image_get_Height__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_007b:
    lea .LN_9_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -160(%rbp), %r8
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Drawing_Rectangle_ctor__i4_i4_i4_i4
    mov %r12, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0080:
    mov $1, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0081:
    mov $2498570, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0086:
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Bitmap_LockBits__v_v_v
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_008b:
    mov -128(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_008c:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_008d:
    mov -128(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_008f:
    jmp .Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0153
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0094:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0095:
    mov -128(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0097:
    jmp .Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0140
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_009c:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_009e:
    mov -48(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_009f:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Imaging_BitmapData_get_Stride__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00a4:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00a5:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00a7:
    mov $4, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00a8:
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00a9:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00aa:
    mov -128(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00ac:
    mov -48(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00ad:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Imaging_BitmapData_get_Scan0__void
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00b2:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00b4:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_Runtime_InteropServices_Marshal_ReadByte__v_i4
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00b9:
    mov -128(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00bb:
    mov -48(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00bc:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Imaging_BitmapData_get_Scan0__void
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00c1:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00c3:
    mov $1, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00c4:
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00c5:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_Runtime_InteropServices_Marshal_ReadByte__v_i4
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00ca:
    mov -128(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00cc:
    mov -48(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00cd:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Imaging_BitmapData_get_Scan0__void
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00d2:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00d4:
    mov $2, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00d5:
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00d6:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_Runtime_InteropServices_Marshal_ReadByte__v_i4
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00db:
    mov -128(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00dd:
    mov -48(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00de:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Imaging_BitmapData_get_Scan0__void
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00e3:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00e5:
    mov $3, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00e6:
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00e7:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_Runtime_InteropServices_Marshal_ReadByte__v_i4
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00ec:
    mov -128(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00ee:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00ef:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00f1:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00f3:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00f5:
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00f6:
    mov $255, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00fb:
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rax
    cltd
    idiv %ecx
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00fc:
    mov -144(%rbp), %rax
    movzbl %al, %eax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_00fd:
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    call m_System_Runtime_InteropServices_Marshal_WriteByte__v_i4_u1
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0102:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0103:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0105:
    mov $1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0106:
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0107:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0109:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_010b:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_010c:
    mov $255, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0111:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    cltd
    idiv %ecx
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0112:
    mov -152(%rbp), %rax
    movzbl %al, %eax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0113:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_Runtime_InteropServices_Marshal_WriteByte__v_i4_u1
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0118:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0119:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_011b:
    mov $2, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_011c:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_011d:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_011f:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0121:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0122:
    mov $255, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0127:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    cltd
    idiv %ecx
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0128:
    mov -160(%rbp), %rax
    movzbl %al, %eax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0129:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    call m_System_Runtime_InteropServices_Marshal_WriteByte__v_i4_u1
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_012e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_012f:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0131:
    mov $3, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0132:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0133:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0135:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    call m_System_Runtime_InteropServices_Marshal_WriteByte__v_i4_u1
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_013a:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_013c:
    mov $1, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_013d:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_013e:
    mov -152(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0140:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0142:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0143:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Image_get_Width__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0148:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_009c
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_014d:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_014f:
    mov $1, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0150:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0151:
    mov -128(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0153:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0155:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0156:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Image_get_Height__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_015b:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0094
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0160:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0161:
    mov -48(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0162:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Bitmap_UnlockBits__ref
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0167:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_0168:
    mov -128(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap__ref, .-m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap__ref

.globl m_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet__i4_ref
.type m_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet__i4_ref, @function
m_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0001:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0002:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Native_Windows_IconHelper_CropSheet__ref_i4
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0007:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0009:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0013
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_000b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_000c:
    mov -48(%rbp), %rdi
    call m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0011:
    jmp .Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0018
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0013:
    lea .LN_0_m_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0018:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0019:
    jmp .Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0025
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_0026:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet__i4_ref, .-m_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet__i4_ref

.globl m_Skymu_Native_Windows_IconHelper_LoadIconFromSheet__i4_ref
.type m_Skymu_Native_Windows_IconHelper_LoadIconFromSheet__i4_ref, @function
m_Skymu_Native_Windows_IconHelper_LoadIconFromSheet__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_0001:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_0002:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Native_Windows_IconHelper_CropSheet__ref_i4
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_0007:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_0009:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_0018
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_000b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_000c:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Drawing_Bitmap_GetHicon__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_0011:
    mov -48(%rbp), %rdi
    call m_System_Drawing_Icon_FromHandle__v
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_0016:
    jmp .Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_001d
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_0018:
    call m_System_Drawing_SystemIcons_get_Application__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_001d:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_001e:
    jmp .Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_002a
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_002a:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_002b:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_IconHelper_LoadIconFromSheet_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_IconHelper_LoadIconFromSheet__i4_ref, .-m_Skymu_Native_Windows_IconHelper_LoadIconFromSheet__i4_ref

.globl m_Skymu_Native_Windows_IconHelper_SetIcon__i8_i4_i8
.type m_Skymu_Native_Windows_IconHelper_SetIcon__i8_i4_i8, @function
m_Skymu_Native_Windows_IconHelper_SetIcon__i8_i4_i8:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0002:
    mov -48(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0008:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_000a:
    call m_System_Runtime_InteropServices_Marshal_SizeOf_valuetype_Skymu_Native_Windows_IconHelper_MENUITEMINFO__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0016:
    mov $128, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_001b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0020:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0022:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0023:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0028:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0029:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_002a:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_002b:
    lea -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_002d:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Native_Windows_IconHelper_SetMenuItemInfo__v_u4_b_v
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0032:
    mov -48(%rbp), %rax
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_0033:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_IconHelper_SetIcon__i8_i4_i8, .-m_Skymu_Native_Windows_IconHelper_SetIcon__i8_i4_i8

.globl m_Skymu_Native_Windows_IconHelper_ctor__void
.type m_Skymu_Native_Windows_IconHelper_ctor__void, @function
m_Skymu_Native_Windows_IconHelper_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_IconHelper_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Native_Windows_IconHelper_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_IconHelper_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_IconHelper_ctor__void, .-m_Skymu_Native_Windows_IconHelper_ctor__void

    .globl m_Skymu_Native_Windows_IconHelper_SetMenuItemInfo__i8_u4_b_v
    .type m_Skymu_Native_Windows_IconHelper_SetMenuItemInfo__i8_u4_b_v, @function
m_Skymu_Native_Windows_IconHelper_SetMenuItemInfo__i8_u4_b_v:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_IconHelper_SetMenuItemInfo_i8_u4_b_v(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_IconHelper_SetMenuItemInfo__i8_u4_b_v, .-m_Skymu_Native_Windows_IconHelper_SetMenuItemInfo__i8_u4_b_v

    .globl m_Skymu_Native_Windows_IconHelper_CreateDIBSection__i8_v_u4_ref_i8_u4
    .type m_Skymu_Native_Windows_IconHelper_CreateDIBSection__i8_v_u4_ref_i8_u4, @function
m_Skymu_Native_Windows_IconHelper_CreateDIBSection__i8_v_u4_ref_i8_u4:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_IconHelper_CreateDIBSection_i8_v_u4_ref_i8_u4(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_IconHelper_CreateDIBSection__i8_v_u4_ref_i8_u4, .-m_Skymu_Native_Windows_IconHelper_CreateDIBSection__i8_v_u4_ref_i8_u4

    .globl m_Skymu_Native_Windows_IconHelper_DeleteObject__i8
    .type m_Skymu_Native_Windows_IconHelper_DeleteObject__i8, @function
m_Skymu_Native_Windows_IconHelper_DeleteObject__i8:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_IconHelper_DeleteObject_i8(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_IconHelper_DeleteObject__i8, .-m_Skymu_Native_Windows_IconHelper_DeleteObject__i8

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4:
    .asciz "System.Uri"

.LN_1_m_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4:
    .asciz "System.Drawing.Bitmap"

.LN_2_m_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4:
    .asciz "System.Drawing.Bitmap"

.LN_3_m_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4:
    .asciz "System.Drawing.Rectangle"

.LN_4_m_Skymu_Native_Windows_IconHelper_CropSheet_ref_i4:
    .asciz "System.Drawing.Rectangle"

.LN_0_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref:
    .asciz "biSize"

.LN_1_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref:
    .asciz "biWidth"

.LN_2_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref:
    .asciz "biHeight"

.LN_3_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref:
    .asciz "biPlanes"

.LN_4_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref:
    .asciz "biBitCount"

.LN_5_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref:
    .asciz "Zero"

.LN_6_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref:
    .asciz "Zero"

.LN_7_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref:
    .asciz "Zero"

.LN_8_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref:
    .asciz "Zero"

.LN_9_m_Skymu_Native_Windows_IconHelper_CreatePremultipliedBitmap_ref:
    .asciz "System.Drawing.Rectangle"

.LN_0_m_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet_i4_ref:
    .asciz "Zero"

.LN_0_m_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8:
    .asciz "cbSize"

.LN_1_m_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8:
    .asciz "fMask"

.LN_2_m_Skymu_Native_Windows_IconHelper_SetIcon_i8_i4_i8:
    .asciz "hbmpItem"

.LSTUB_m_Skymu_Native_Windows_IconHelper_SetMenuItemInfo_i8_u4_b_v:
    .asciz "Skymu.Native.Windows.IconHelper::SetMenuItemInfo  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_IconHelper_CreateDIBSection_i8_v_u4_ref_i8_u4:
    .asciz "Skymu.Native.Windows.IconHelper::CreateDIBSection  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_IconHelper_DeleteObject_i8:
    .asciz "Skymu.Native.Windows.IconHelper::DeleteObject  [P/Invoke declaration (native import, no IL body)]"

    .section .note.GNU-stack,"",@progbits
