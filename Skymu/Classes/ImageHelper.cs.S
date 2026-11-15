# Classes/ImageHelper.cs
    .text

.globl m_Skymu_Helpers_ImageHelper_FreezeLoad__ref
.type m_Skymu_Helpers_ImageHelper_FreezeLoad__ref, @function
m_Skymu_Helpers_ImageHelper_FreezeLoad__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoad_ref_0000:
    lea .LS_0_m_Skymu_Helpers_ImageHelper_FreezeLoad_ref(%rip), %rdi
    mov $46, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoad_ref_0005:
    lea .LN_1_m_Skymu_Helpers_ImageHelper_FreezeLoad_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoad_ref_000a:
    lea .LS_2_m_Skymu_Helpers_ImageHelper_FreezeLoad_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoad_ref_000f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoad_ref_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref_ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoad_ref_0015:
    mov -24(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoad_ref_001a:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_FreezeLoad_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Helpers_ImageHelper_FreezeLoad__ref, .-m_Skymu_Helpers_ImageHelper_FreezeLoad__ref

.globl m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri__ref
.type m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri__ref, @function
m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0000:
    lea .LN_0_m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0006:
    lea -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapImage_TryGetValue__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_000d:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0011
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_000f:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0010:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0011:
    lea .LN_1_m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Media_Imaging_BitmapImage_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0016:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0017:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0018:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapImage_BeginInit__void
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_001d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_001e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_001f:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0020:
    lea .LN_2_m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0025:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapImage_set_UriSource__ref
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_002a:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_002b:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_002c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapImage_set_CacheOption__v
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0031:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0032:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapImage_EndInit__void
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0037:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0038:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Freezable_Freeze__void
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_003d:
    lea .LN_3_m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0042:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0043:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0044:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapImage_set_Item__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_0049:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_004a:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri__ref, .-m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri__ref

.globl m_Skymu_Helpers_ImageHelper_GenerateFromArray__arr
.type m_Skymu_Helpers_ImageHelper_GenerateFromArray__arr, @function
m_Skymu_Helpers_ImageHelper_GenerateFromArray__arr:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0000:
    lea .LN_0_m_Skymu_Helpers_ImageHelper_GenerateFromArray_arr(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Media_Imaging_BitmapImage_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0005:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0007:
    lea .LN_1_m_Skymu_Helpers_ImageHelper_GenerateFromArray_arr(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_IO_MemoryStream_ctor__arr
    mov %r12, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_000c:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_000d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_000e:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapImage_BeginInit__void
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0013:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0014:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0015:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapImage_set_CacheOption__v
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_001a:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_001b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_001c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapImage_set_StreamSource__ref
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0021:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0022:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapImage_EndInit__void
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0027:
    jmp .Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0033
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0033:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0034:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Freezable_Freeze__void
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_0039:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_003a:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_GenerateFromArray_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Helpers_ImageHelper_GenerateFromArray__arr, .-m_Skymu_Helpers_ImageHelper_GenerateFromArray__arr

.globl m_Skymu_Helpers_ImageHelper_Darken__ref
.type m_Skymu_Helpers_ImageHelper_Darken__ref, @function
m_Skymu_Helpers_ImageHelper_Darken__ref:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0001:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Helpers_ImageHelper_Darken_ref_0005
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0003:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0004:
    mov -64(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0006:
    lea .LN_0_m_Skymu_Helpers_ImageHelper_Darken_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_Imaging_WriteableBitmap_ctor__ref
    mov %r12, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_000b:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_000c:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_000d:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapSource_get_PixelWidth__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0012:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0013:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapSource_get_Format__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0018:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0019:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_001b:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_PixelFormat_get_BitsPerPixel__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0020:
    mov $8, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0021:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cltd
    idiv %ecx
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0022:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0024:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0025:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapSource_get_PixelHeight__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_002a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_002b:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_002c:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0031:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0032:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0033:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0034:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0035:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0036:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapSource_CopyPixels__ref_i4_i4
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_003b:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_003c:
    mov -64(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_003e:
    jmp .Lm_Skymu_Helpers_ImageHelper_Darken_ref_0055
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0040:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0041:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0043:
    mov $255, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0048:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0049:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_004b:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_004c:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_004d:
    mov -96(%rbp), %rax
    movzbl %al, %eax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_004e:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_004f:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0051:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0052:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0053:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0055:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0057:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0058:
    mov -72(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0059:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_005a:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Helpers_ImageHelper_Darken_ref_0040
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_005c:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_005d:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_005e:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_005f:
    mov -24(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0060:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapSource_get_PixelWidth__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0065:
    mov -24(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0066:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapSource_get_PixelHeight__void
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_006b:
    lea .LN_1_m_Skymu_Helpers_ImageHelper_Darken_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %r8
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Int32Rect_ctor__i4_i4_i4_i4
    mov %r12, -88(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0070:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0071:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0072:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0073:
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
    call m_System_Windows_Media_Imaging_WriteableBitmap_WritePixels__v_ref_i4_i4
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0078:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_0079:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_Darken_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Helpers_ImageHelper_Darken__ref, .-m_Skymu_Helpers_ImageHelper_Darken__ref

.globl m_Skymu_Helpers_ImageHelper_ResolveExtension__arr_ref
.type m_Skymu_Helpers_ImageHelper_ResolveExtension__arr_ref, @function
m_Skymu_Helpers_ImageHelper_ResolveExtension__arr_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0001:
    mov -40(%rbp), %rdi
    call m_System_IO_Path_GetExtension__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0007:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_000d
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0009:
    mov -32(%rbp), %rax
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_000a:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_000b:
    jmp .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0012
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_000d:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_ToLowerInvariant__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0012:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0013:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0014:
    lea .LS_0_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0019:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_001e:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0054
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0020:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0021:
    lea .LS_1_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0026:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_002b:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0054
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_002d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_002e:
    lea .LS_2_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0033:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0038:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0054
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_003a:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_003b:
    lea .LS_3_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0040:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0045:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0054
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0047:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0048:
    lea .LS_4_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_004d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0052:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0056
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0054:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0055:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0056:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0057:
    mov -40(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0058:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0059:
    mov $4, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_005a:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00f3
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_005f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0060:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0061:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0062:
    mov $137, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0067:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_008a
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0069:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_006a:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_006b:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_006c:
    mov $80, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_006e:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_008a
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0070:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0071:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0072:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0073:
    mov $78, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0075:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_008a
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0077:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0078:
    mov $3, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0079:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_007a:
    mov $71, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_007c:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_008a
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_007e:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_007f:
    lea .LS_5_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0084:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0089:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_008a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_008b:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_008c:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_008d:
    mov $255, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0092:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00aa
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0094:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0095:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0096:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_0097:
    mov $216, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_009c:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00aa
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_009e:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_009f:
    lea .LS_6_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00a4:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00a9:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00aa:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00ab:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00ac:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00ad:
    mov $71, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00af:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00cb
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00b1:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00b2:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00b3:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00b4:
    mov $73, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00b6:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00cb
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00b8:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00b9:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00ba:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00bb:
    mov $70, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00bd:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00cb
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00bf:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00c0:
    lea .LS_7_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00c5:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00ca:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00cb:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00cc:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00cd:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00ce:
    mov $82, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00d0:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00f3
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00d2:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00d3:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00d4:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00d5:
    mov $73, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00d7:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00f3
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00d9:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00da:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00db:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00dc:
    mov $70, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00de:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00f3
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00e0:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00e1:
    mov $3, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00e2:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00e3:
    mov $70, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00e5:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00f3
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00e7:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00e8:
    lea .LS_8_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00ed:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00f2:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00f3:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_00f4:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Helpers_ImageHelper_ResolveExtension__arr_ref, .-m_Skymu_Helpers_ImageHelper_ResolveExtension__arr_ref

.globl m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap__ref
.type m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap__ref, @function
m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0000:
    lea .LN_0_m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_IO_MemoryStream_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0005:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0006:
    lea .LN_1_m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Media_Imaging_PngBitmapEncoder_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_000b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapEncoder_get_Frames__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0011:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0012:
    mov -48(%rbp), %rdi
    call m_System_Windows_Media_Imaging_BitmapFrame_Create__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0017:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapFrame_Add__gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_001c:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_001d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapEncoder_Save__ref
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0022:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0023:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0024:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_set_Position__i8
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_002a:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_002b:
    lea .LN_2_m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Drawing_Bitmap_ctor__ref
    mov %r12, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0030:
    lea .LN_3_m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Drawing_Bitmap_ctor__ref
    mov %r12, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0035:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0036:
    jmp .Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0042
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0042:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_0043:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap__ref, .-m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap__ref

.globl m_Skymu_Helpers_ImageHelper_ctor__void
.type m_Skymu_Helpers_ImageHelper_ctor__void, @function
m_Skymu_Helpers_ImageHelper_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Helpers_ImageHelper_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Helpers_ImageHelper_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Helpers_ImageHelper_ctor__void, .-m_Skymu_Helpers_ImageHelper_ctor__void

.globl m_Skymu_Helpers_ImageHelper_cctor__void
.type m_Skymu_Helpers_ImageHelper_cctor__void, @function
m_Skymu_Helpers_ImageHelper_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Helpers_ImageHelper_cctor_void_0000:
    lea .LN_0_m_Skymu_Helpers_ImageHelper_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Media_Imaging_BitmapImage_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Helpers_ImageHelper_cctor_void_0005:
    lea .LN_1_m_Skymu_Helpers_ImageHelper_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Helpers_ImageHelper_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Helpers_ImageHelper_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Helpers_ImageHelper_cctor__void, .-m_Skymu_Helpers_ImageHelper_cctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_Helpers_ImageHelper_FreezeLoad_ref:
    .short 112, 97, 99, 107, 58, 47, 47, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 58, 44, 44, 44, 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 84, 104, 101, 109, 101, 115, 47

.LN_1_m_Skymu_Helpers_ImageHelper_FreezeLoad_ref:
    .asciz "Theme"

.LS_2_m_Skymu_Helpers_ImageHelper_FreezeLoad_ref:
    .short 47, 65, 115, 115, 101, 116, 115, 47

.LN_0_m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref:
    .asciz "_cache"

.LN_1_m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref:
    .asciz "System.Windows.Media.Imaging.BitmapImage"

.LN_2_m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref:
    .asciz "System.Uri"

.LN_3_m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri_ref:
    .asciz "_cache"

.LN_0_m_Skymu_Helpers_ImageHelper_GenerateFromArray_arr:
    .asciz "System.Windows.Media.Imaging.BitmapImage"

.LN_1_m_Skymu_Helpers_ImageHelper_GenerateFromArray_arr:
    .asciz "System.IO.MemoryStream"

.LN_0_m_Skymu_Helpers_ImageHelper_Darken_ref:
    .asciz "System.Windows.Media.Imaging.WriteableBitmap"

.LN_1_m_Skymu_Helpers_ImageHelper_Darken_ref:
    .asciz "System.Windows.Int32Rect"

.LS_0_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref:
    .short 46, 112, 110, 103

.LS_1_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref:
    .short 46, 106, 112, 103

.LS_2_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref:
    .short 46, 106, 112, 101, 103

.LS_3_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref:
    .short 46, 103, 105, 102

.LS_4_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref:
    .short 46, 119, 101, 98, 112

.LS_5_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref:
    .short 46, 112, 110, 103

.LS_6_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref:
    .short 46, 106, 112, 103

.LS_7_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref:
    .short 46, 103, 105, 102

.LS_8_m_Skymu_Helpers_ImageHelper_ResolveExtension_arr_ref:
    .short 46, 119, 101, 98, 112

.LN_0_m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref:
    .asciz "System.IO.MemoryStream"

.LN_1_m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref:
    .asciz "System.Windows.Media.Imaging.PngBitmapEncoder"

.LN_2_m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref:
    .asciz "System.Drawing.Bitmap"

.LN_3_m_Skymu_Helpers_ImageHelper_WpfToGdiBitmap_ref:
    .asciz "System.Drawing.Bitmap"

.LN_0_m_Skymu_Helpers_ImageHelper_cctor_void:
    .asciz "System.Windows.Media.Imaging.BitmapImage>"

.LN_1_m_Skymu_Helpers_ImageHelper_cctor_void:
    .asciz "_cache"

    .section .note.GNU-stack,"",@progbits
