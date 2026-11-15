# Classes/Windows/SystemControls.cs
    .text

.globl m_Skymu_Native_Windows_NativeMenuBar_ctor__ref
.type m_Skymu_Native_Windows_NativeMenuBar_ctor__ref, @function
m_Skymu_Native_Windows_NativeMenuBar_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0001:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0008:
    lea .LN_1_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_EventHandler_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_000d:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0013:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0018:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0019:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_001a:
    lea .LN_3_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Interop_WindowInteropHelper_ctor__ref
    mov %r12, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_001f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Interop_WindowInteropHelper_get_Handle__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0024:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0029:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_002a:
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_002f:
    mov -32(%rbp), %rdi
    call m_System_Windows_Interop_HwndSource_FromHwnd__v
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0034:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0035:
    lea m_Skymu_Native_Windows_NativeMenuBar_WndProc__v_i4_v_v_v(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_003b:
    lea .LN_6_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Interop_HwndSourceHook_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0040:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Interop_HwndSource_AddHook__ref
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0045:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0046:
    call m_Skymu_Native_Windows_NativeMenuBar_CreateMenu__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_004b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_7_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0050:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0051:
    mov -32(%rbp), %rdi
    lea .LN_8_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0056:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0057:
    mov -40(%rbp), %rdi
    lea .LN_9_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_005c:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeMenuBar_SetMenu__v_v
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0061:
    mov -32(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_0062:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_NativeMenuBar_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_NativeMenuBar_ctor__ref, .-m_Skymu_Native_Windows_NativeMenuBar_ctor__ref

.globl m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr
.type m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr, @function
m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr:
    push %rbp
    mov %rsp, %rbp
    sub $192, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0000:
    call m_Skymu_Native_Windows_NativeMenuBar_CreatePopupMenu__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0005:
    mov -120(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0006:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0007:
    mov -120(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0008:
    mov $0, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0009:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_000a:
    jmp .Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e8
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_000f:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0010:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0011:
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0016:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0017:
    mov -136(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_001c:
    mov -136(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_001d:
    mov -128(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0022:
    mov -128(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0024:
    mov -64(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0025:
    lea .LS_2_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_002a:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_002f:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0048
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0031:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0032:
    mov $2048, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0037:
    lea .LN_3_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_003c:
    xor %eax, %eax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_003d:
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeMenuBar_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0042:
    mov -128(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0043:
    jmp .Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e4
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0048:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0049:
    mov -128(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_004b:
    mov -72(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_004d:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0066
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_004f:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0051:
    mov $1, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0052:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    or %ecx, %eax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0053:
    mov -128(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0055:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0056:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0058:
    lea .LN_4_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_005d:
    mov -64(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_005e:
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeMenuBar_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0063:
    mov -128(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0064:
    jmp .Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e4
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0066:
    mov -72(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0068:
    mov -128(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_006d:
    mov -136(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_006f:
    mov -88(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0071:
    mov -136(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00ac
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0073:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0074:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0075:
    mov -144(%rbp), %rdi
    lea .LN_5_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_007a:
    mov -144(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_007c:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_007e:
    mov $1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_007f:
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0080:
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rdi
    lea .LN_6_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0085:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0087:
    mov -136(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0089:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_008a:
    mov -136(%rbp), %rdi
    lea .LN_7_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_008f:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0091:
    mov -88(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0093:
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_set_Item__gen_gen
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0098:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0099:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_009b:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_009d:
    mov -160(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_009e:
    mov -168(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u8
    mov %rax, -168(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00a3:
    mov -64(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00a4:
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeMenuBar_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00a9:
    mov -152(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00aa:
    jmp .Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e4
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00ac:
    mov -72(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00ae:
    mov -136(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00b3:
    mov -144(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00b5:
    mov -112(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00b7:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00d9
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00b9:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00ba:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00bc:
    mov $16, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00be:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    or %ecx, %eax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00bf:
    mov -112(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00c1:
    mov -160(%rbp), %rdi
    lea .LN_8_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00c6:
    mov -160(%rbp), %rdi
    call m_System_IntPtr_op_Explicit__v
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00cb:
    mov -160(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u8
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00d0:
    mov -64(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00d1:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeMenuBar_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00d6:
    mov -144(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00d7:
    jmp .Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e4
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00d9:
    lea .LS_9_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rdi
    mov $47, %esi
    call shim_string_new
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00de:
    lea .LN_10_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -144(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ArgumentException_ctor__ref
    mov %r12, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e3:
    mov -144(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e4:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e5:
    mov $1, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e6:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e7:
    mov -128(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e8:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00e9:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00ea:
    mov -128(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00eb:
    mov -136(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00ec:
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_000f
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00f1:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00f2:
    mov -136(%rbp), %rdi
    lea .LN_11_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00f7:
    mov $16, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00f9:
    lea -40(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_00fb:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IntPtr_ToInt64__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0100:
    mov -152(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u8
    mov %rax, -152(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0105:
    mov -24(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_0106:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeMenuBar_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_010b:
    mov -136(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_010c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr, .-m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr

.globl m_Skymu_Native_Windows_NativeMenuBar_WndProc__i8_i4_i8_i8_v
.type m_Skymu_Native_Windows_NativeMenuBar_WndProc__i8_i4_i8_i8_v, @function
m_Skymu_Native_Windows_NativeMenuBar_WndProc__i8_i4_i8_i8_v:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
    mov %r9, -56(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0000:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0001:
    mov $273, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0006:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0039
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0008:
    lea -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_000a:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IntPtr_ToInt32__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_000f:
    mov $65535, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0014:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    and %ecx, %eax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0015:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0016:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0017:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_001c:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_001d:
    lea -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_001f:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_TryGetValue__gen_gen
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0024:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0039
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0026:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0027:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0035
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0029:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_002a:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_002b:
    lea .LN_1_m_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0030:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_Invoke__ref_ref
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0035:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0037:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0038:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rax
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_0039:
    lea .LN_2_m_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_003e:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_NativeMenuBar_WndProc__i8_i4_i8_i8_v, .-m_Skymu_Native_Windows_NativeMenuBar_WndProc__i8_i4_i8_i8_v

.globl m_Skymu_Native_Windows_NativeSubMenu_ctor__ref
.type m_Skymu_Native_Windows_NativeSubMenu_ctor__ref, @function
m_Skymu_Native_Windows_NativeSubMenu_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_ctor_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Native_Windows_NativeSubMenu_ctor_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_ctor_ref_0007:
    call m_Skymu_Native_Windows_NativeSubMenu_CreatePopupMenu__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_ctor_ref_000c:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_NativeSubMenu_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_NativeSubMenu_ctor_ref_0011:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_ctor_ref_0012:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_ctor_ref_0013:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_NativeSubMenu_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_NativeSubMenu_ctor_ref_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_NativeSubMenu_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_NativeSubMenu_ctor__ref, .-m_Skymu_Native_Windows_NativeSubMenu_ctor__ref

.globl m_Skymu_Native_Windows_NativeSubMenu_RefreshItems__arr
.type m_Skymu_Native_Windows_NativeSubMenu_RefreshItems__arr, @function
m_Skymu_Native_Windows_NativeSubMenu_RefreshItems__arr:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0006:
    mov -40(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeSubMenu_GetMenuItemCount__v
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_000b:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_000c:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_000d:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_000e:
    jmp .Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0026
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0011:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0017:
    mov $1024, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_001c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeSubMenu_RemoveMenu__v_u4_u4
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0021:
    mov -40(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0022:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0023:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0024:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0025:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0026:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0027:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0028:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jge .Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0010
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_002a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_002b:
    lea .LS_2_m_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0030:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0031:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeSubMenu_Create__ref_arr
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0036:
    mov -40(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_0037:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_NativeSubMenu_RefreshItems__arr, .-m_Skymu_Native_Windows_NativeSubMenu_RefreshItems__arr

.globl m_Skymu_Native_Windows_NativeSubMenu_Create__ref_arr
.type m_Skymu_Native_Windows_NativeSubMenu_Create__ref_arr, @function
m_Skymu_Native_Windows_NativeSubMenu_Create__ref_arr:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0000:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0001:
    mov -96(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0002:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0003:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0004:
    jmp .Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00c0
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0009:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_000a:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_000b:
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0010:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0011:
    mov -112(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0016:
    mov -112(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0017:
    mov -104(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_001c:
    mov -104(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_001d:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_001e:
    lea .LS_2_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0023:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0028:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0043
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_002a:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_002b:
    mov -104(%rbp), %rdi
    lea .LN_3_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0030:
    mov $2048, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0035:
    lea .LN_4_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_003a:
    xor %eax, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_003b:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeSubMenu_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0040:
    mov -104(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0041:
    jmp .Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00bc
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0043:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0044:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0046:
    mov $-1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0047:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0049:
    mov -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_004a:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0077
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_004c:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_004e:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_004f:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    or %ecx, %eax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0050:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0052:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0053:
    mov -104(%rbp), %rdi
    lea .LN_5_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0058:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_005a:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_005c:
    mov $-1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_005d:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0069
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_005f:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0061:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0062:
    mov -128(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u8
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0067:
    jmp .Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_006e
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0069:
    lea .LN_6_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_006e:
    mov -56(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_006f:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeSubMenu_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0074:
    mov -112(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0075:
    jmp .Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00bc
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0077:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0078:
    mov -104(%rbp), %rdi
    lea .LN_7_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_007d:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_007e:
    mov -104(%rbp), %rdi
    lea .LN_8_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0083:
    mov -104(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0085:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0087:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0088:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0089:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_9_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_008e:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0090:
    mov -96(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0092:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0093:
    mov -96(%rbp), %rdi
    lea .LN_10_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0098:
    mov -96(%rbp), %rdi
    lea .LN_11_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_009d:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_009f:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00a0:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_set_Item__gen_gen
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00a5:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00a6:
    mov -104(%rbp), %rdi
    lea .LN_12_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00ab:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00ad:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00af:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00b0:
    mov -128(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u8
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00b5:
    mov -56(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00b6:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeSubMenu_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00bb:
    mov -112(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00bc:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00bd:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00be:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00bf:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00c0:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00c1:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00c2:
    mov -104(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00c3:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00c4:
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_0009
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00c9:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_00ca:
    mov -112(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_NativeSubMenu_Create__ref_arr, .-m_Skymu_Native_Windows_NativeSubMenu_Create__ref_arr

.globl m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons__ref_arr
.type m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons__ref_arr, @function
m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons__ref_arr:
    push %rbp
    mov %rsp, %rbp
    sub $160, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0000:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0001:
    mov -104(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0002:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0003:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0004:
    jmp .Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_010c
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0009:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_000a:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_000b:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0010:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0011:
    mov -120(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0016:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0017:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0018:
    mov -112(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_001d:
    mov -112(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_001e:
    mov -104(%rbp), %rdi
    lea .LN_2_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0023:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0025:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0026:
    lea .LS_3_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_002b:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0030:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_004e
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0032:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0033:
    mov -104(%rbp), %rdi
    lea .LN_4_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0038:
    mov $2048, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_003d:
    lea .LN_5_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0042:
    xor %eax, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0043:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeSubMenu_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0048:
    mov -104(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0049:
    jmp .Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0108
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_004e:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_004f:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0051:
    mov $-1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0052:
    mov -104(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0054:
    mov -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0055:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00a6
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0057:
    lea -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0059:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int_get_HasValue__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_005e:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_007b
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0060:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0061:
    mov -104(%rbp), %rdi
    lea .LN_6_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0066:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0067:
    mov -104(%rbp), %rdi
    lea .LN_7_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_006c:
    mov -104(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_006e:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0070:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0071:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0072:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_8_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0077:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0079:
    mov -104(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_007b:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_007d:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_007e:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    or %ecx, %eax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_007f:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0081:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0082:
    mov -104(%rbp), %rdi
    lea .LN_9_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0087:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0089:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_008b:
    mov $-1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_008c:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0098
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_008e:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0090:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0091:
    mov -128(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u8
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0096:
    jmp .Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_009d
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0098:
    lea .LN_10_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_009d:
    mov -56(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_009e:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeSubMenu_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00a3:
    mov -112(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00a4:
    jmp .Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00eb
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00a6:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00a7:
    mov -104(%rbp), %rdi
    lea .LN_11_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00ac:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00ad:
    mov -104(%rbp), %rdi
    lea .LN_12_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00b2:
    mov -104(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00b4:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00b6:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00b7:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00b8:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_13_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00bd:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00bf:
    mov -104(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00c1:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00c2:
    mov -104(%rbp), %rdi
    lea .LN_14_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00c7:
    mov -104(%rbp), %rdi
    lea .LN_15_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00cc:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00ce:
    mov -64(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00cf:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_set_Item__gen_gen
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00d4:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00d5:
    mov -112(%rbp), %rdi
    lea .LN_16_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00da:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00dc:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00de:
    mov -128(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00df:
    mov -136(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u8
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00e4:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00e5:
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    call m_Skymu_Native_Windows_NativeSubMenu_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00ea:
    mov -120(%rbp), %rax
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00eb:
    lea -72(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00ed:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int_get_HasValue__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00f2:
    mov -112(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0108
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00f4:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00f5:
    mov -112(%rbp), %rdi
    lea .LN_17_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00fa:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00fc:
    lea -72(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_00fe:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int_get_Value__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0103:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    call m_Skymu_Native_Windows_IconHelper_SetIcon__v_i4_v
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0108:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0109:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_010a:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_010b:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_010c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_010d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_010e:
    mov -112(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_010f:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0110:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0009
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0115:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_0116:
    mov -120(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons__ref_arr, .-m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons__ref_arr

    .globl m_Skymu_Native_Windows_NativeMenuBar_CreateMenu__void
    .type m_Skymu_Native_Windows_NativeMenuBar_CreateMenu__void, @function
m_Skymu_Native_Windows_NativeMenuBar_CreateMenu__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_NativeMenuBar_CreateMenu_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_NativeMenuBar_CreateMenu__void, .-m_Skymu_Native_Windows_NativeMenuBar_CreateMenu__void

    .globl m_Skymu_Native_Windows_NativeMenuBar_CreatePopupMenu__void
    .type m_Skymu_Native_Windows_NativeMenuBar_CreatePopupMenu__void, @function
m_Skymu_Native_Windows_NativeMenuBar_CreatePopupMenu__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_NativeMenuBar_CreatePopupMenu_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_NativeMenuBar_CreatePopupMenu__void, .-m_Skymu_Native_Windows_NativeMenuBar_CreatePopupMenu__void

    .globl m_Skymu_Native_Windows_NativeMenuBar_AppendMenu__i8_u4_u8_ref
    .type m_Skymu_Native_Windows_NativeMenuBar_AppendMenu__i8_u4_u8_ref, @function
m_Skymu_Native_Windows_NativeMenuBar_AppendMenu__i8_u4_u8_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_NativeMenuBar_AppendMenu_i8_u4_u8_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_NativeMenuBar_AppendMenu__i8_u4_u8_ref, .-m_Skymu_Native_Windows_NativeMenuBar_AppendMenu__i8_u4_u8_ref

    .globl m_Skymu_Native_Windows_NativeMenuBar_SetMenu__i8_i8
    .type m_Skymu_Native_Windows_NativeMenuBar_SetMenu__i8_i8, @function
m_Skymu_Native_Windows_NativeMenuBar_SetMenu__i8_i8:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_NativeMenuBar_SetMenu_i8_i8(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_NativeMenuBar_SetMenu__i8_i8, .-m_Skymu_Native_Windows_NativeMenuBar_SetMenu__i8_i8

    .globl m_Skymu_Native_Windows_NativeSubMenu_CreatePopupMenu__void
    .type m_Skymu_Native_Windows_NativeSubMenu_CreatePopupMenu__void, @function
m_Skymu_Native_Windows_NativeSubMenu_CreatePopupMenu__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_NativeSubMenu_CreatePopupMenu_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_NativeSubMenu_CreatePopupMenu__void, .-m_Skymu_Native_Windows_NativeSubMenu_CreatePopupMenu__void

    .globl m_Skymu_Native_Windows_NativeSubMenu_AppendMenu__i8_u4_u8_ref
    .type m_Skymu_Native_Windows_NativeSubMenu_AppendMenu__i8_u4_u8_ref, @function
m_Skymu_Native_Windows_NativeSubMenu_AppendMenu__i8_u4_u8_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_NativeSubMenu_AppendMenu_i8_u4_u8_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_NativeSubMenu_AppendMenu__i8_u4_u8_ref, .-m_Skymu_Native_Windows_NativeSubMenu_AppendMenu__i8_u4_u8_ref

    .globl m_Skymu_Native_Windows_NativeSubMenu_RemoveMenu__i8_u4_u4
    .type m_Skymu_Native_Windows_NativeSubMenu_RemoveMenu__i8_u4_u4, @function
m_Skymu_Native_Windows_NativeSubMenu_RemoveMenu__i8_u4_u4:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_NativeSubMenu_RemoveMenu_i8_u4_u4(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_NativeSubMenu_RemoveMenu__i8_u4_u4, .-m_Skymu_Native_Windows_NativeSubMenu_RemoveMenu__i8_u4_u4

    .globl m_Skymu_Native_Windows_NativeSubMenu_DestroyMenu__i8
    .type m_Skymu_Native_Windows_NativeSubMenu_DestroyMenu__i8, @function
m_Skymu_Native_Windows_NativeSubMenu_DestroyMenu__i8:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_NativeSubMenu_DestroyMenu_i8(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_NativeSubMenu_DestroyMenu__i8, .-m_Skymu_Native_Windows_NativeSubMenu_DestroyMenu__i8

    .globl m_Skymu_Native_Windows_NativeSubMenu_GetMenuItemCount__i8
    .type m_Skymu_Native_Windows_NativeSubMenu_GetMenuItemCount__i8, @function
m_Skymu_Native_Windows_NativeSubMenu_GetMenuItemCount__i8:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_NativeSubMenu_GetMenuItemCount_i8(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_NativeSubMenu_GetMenuItemCount__i8, .-m_Skymu_Native_Windows_NativeSubMenu_GetMenuItemCount__i8

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref:
    .asciz "nextId"

.LN_1_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref:
    .asciz "System.EventHandler>"

.LN_2_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref:
    .asciz "callbacks"

.LN_3_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref:
    .asciz "System.Windows.Interop.WindowInteropHelper"

.LN_4_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref:
    .asciz "hwnd"

.LN_5_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref:
    .asciz "hwnd"

.LN_6_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref:
    .asciz "System.Windows.Interop.HwndSourceHook"

.LN_7_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref:
    .asciz "hMenu"

.LN_8_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref:
    .asciz "hwnd"

.LN_9_m_Skymu_Native_Windows_NativeMenuBar_ctor_ref:
    .asciz "hMenu"

.LN_0_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .asciz "Item1"

.LN_1_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .asciz "Item2"

.LS_2_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .short 36

.LN_3_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .asciz "Zero"

.LN_4_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .asciz "Zero"

.LN_5_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .asciz "nextId"

.LN_6_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .asciz "nextId"

.LN_7_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .asciz "callbacks"

.LN_8_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .asciz "hSubMenu"

.LS_9_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .short 79, 110, 108, 121, 32, 69, 118, 101, 110, 116, 72, 97, 110, 100, 108, 101, 114, 32, 111, 114, 32, 78, 97, 116, 105, 118, 101, 83, 117, 98, 77, 101, 110, 117, 32, 105, 115, 32, 115, 117, 112, 112, 111, 114, 116, 101, 100

.LN_10_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .asciz "System.ArgumentException"

.LN_11_m_Skymu_Native_Windows_NativeMenuBar_Create_ref_arr:
    .asciz "hMenu"

.LN_0_m_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v:
    .asciz "callbacks"

.LN_1_m_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v:
    .asciz "Empty"

.LN_2_m_Skymu_Native_Windows_NativeMenuBar_WndProc_i8_i4_i8_i8_v:
    .asciz "Zero"

.LN_0_m_Skymu_Native_Windows_NativeSubMenu_ctor_ref:
    .asciz "hSubMenu"

.LN_1_m_Skymu_Native_Windows_NativeSubMenu_ctor_ref:
    .asciz "bar"

.LN_0_m_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr:
    .asciz "hSubMenu"

.LN_1_m_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr:
    .asciz "hSubMenu"

.LS_2_m_Skymu_Native_Windows_NativeSubMenu_RefreshItems_arr:
    .short 0

.LN_0_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "Item1"

.LN_1_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "Item2"

.LS_2_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .short 36

.LN_3_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "hSubMenu"

.LN_4_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "Zero"

.LN_5_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "hSubMenu"

.LN_6_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "Zero"

.LN_7_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "bar"

.LN_8_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "nextId"

.LN_9_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "nextId"

.LN_10_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "bar"

.LN_11_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "callbacks"

.LN_12_m_Skymu_Native_Windows_NativeSubMenu_Create_ref_arr:
    .asciz "hSubMenu"

.LN_0_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "Item1"

.LN_1_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "Item2"

.LN_2_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "Item3"

.LS_3_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .short 36

.LN_4_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "hSubMenu"

.LN_5_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "Zero"

.LN_6_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "bar"

.LN_7_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "nextId"

.LN_8_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "nextId"

.LN_9_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "hSubMenu"

.LN_10_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "Zero"

.LN_11_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "bar"

.LN_12_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "nextId"

.LN_13_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "nextId"

.LN_14_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "bar"

.LN_15_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "callbacks"

.LN_16_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "hSubMenu"

.LN_17_m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons_ref_arr:
    .asciz "hSubMenu"

.LSTUB_m_Skymu_Native_Windows_NativeMenuBar_CreateMenu_void:
    .asciz "Skymu.Native.Windows.NativeMenuBar::CreateMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_NativeMenuBar_CreatePopupMenu_void:
    .asciz "Skymu.Native.Windows.NativeMenuBar::CreatePopupMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_NativeMenuBar_AppendMenu_i8_u4_u8_ref:
    .asciz "Skymu.Native.Windows.NativeMenuBar::AppendMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_NativeMenuBar_SetMenu_i8_i8:
    .asciz "Skymu.Native.Windows.NativeMenuBar::SetMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_NativeSubMenu_CreatePopupMenu_void:
    .asciz "Skymu.Native.Windows.NativeSubMenu::CreatePopupMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_NativeSubMenu_AppendMenu_i8_u4_u8_ref:
    .asciz "Skymu.Native.Windows.NativeSubMenu::AppendMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_NativeSubMenu_RemoveMenu_i8_u4_u4:
    .asciz "Skymu.Native.Windows.NativeSubMenu::RemoveMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_NativeSubMenu_DestroyMenu_i8:
    .asciz "Skymu.Native.Windows.NativeSubMenu::DestroyMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_NativeSubMenu_GetMenuItemCount_i8:
    .asciz "Skymu.Native.Windows.NativeSubMenu::GetMenuItemCount  [P/Invoke declaration (native import, no IL body)]"

    .section .note.GNU-stack,"",@progbits
