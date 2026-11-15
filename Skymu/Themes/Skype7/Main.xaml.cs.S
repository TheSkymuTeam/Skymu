# Themes/Skype7/Main.xaml.cs
    .text

.globl m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext__void
.type m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext__void, @function
m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0001:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0006:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0008:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_000d:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_000f:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0195
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0014:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0015:
    mov -80(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_001a:
    lea .LN_3_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_001f:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0020:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0026
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0022:
    mov -80(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0023:
    xor %eax, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0024:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_002b
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0026:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_002b:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0030:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0031:
    mov -80(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0036:
    lea .LN_5_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_003b:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_003c:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0042
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_003e:
    mov -80(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_003f:
    xor %eax, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0040:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0047
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0042:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Status__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0047:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_004c:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_004d:
    call m_Skymu_Preferences_Settings_get_BrandingName__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0052:
    lea .LS_6_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0057:
    lea .LN_7_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_005c:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_005d:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0063
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_005f:
    mov -96(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0060:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0061:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0068
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0063:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0068:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_006d:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_Title__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0072:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0073:
    mov -80(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0078:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0079:
    mov -88(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_007e:
    mov -88(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0083:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_set_ItemsSource__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0088:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0089:
    mov -80(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_008e:
    lea .LN_12_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0093:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0098:
    lea .LN_13_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_009d:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_009e:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00a4
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00a0:
    mov -72(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00a1:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00a2:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00d5
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00a4:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00a9:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00aa:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00b9
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00ac:
    mov -72(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00ad:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00af:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00b5:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00b7:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00c0
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00b9:
    mov -72(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00ba:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00bb:
    lea .LN_14_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_int32_ctor__gen
    mov %r12, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00c0:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00c1:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00c2:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00c3:
    lea -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00c5:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Nullable_1_int32_GetValueOrDefault__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00ca:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00cb:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    setg %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00cd:
    lea -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00cf:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Nullable_1_int32_get_HasValue__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00d4:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    and %ecx, %eax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00d5:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00f3
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00d7:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00d8:
    mov -80(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00dd:
    lea .LN_16_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00e2:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00e7:
    mov -88(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_GenerateFromArray__arr
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00ec:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Image_set_Source__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00f1:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0103
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00f3:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00f4:
    mov -80(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00f9:
    lea .LN_18_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_00fe:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Image_set_Source__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0103:
    call m_Skymu_Preferences_Settings_get_CheckSpeedOnStartup__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0108:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_011b
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_010a:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_010b:
    mov -80(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0110:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0115:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0116:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Input_ICommand_Execute__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_011b:
    lea .LN_20_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0120:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0121:
    lea m_Skymu_Skype7_Main_ctor_b_11_8__ref_ref(%rip), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0127:
    lea .LN_21_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_PropertyChangedEventHandler_ctor__ref_v
    mov %r12, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_012c:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_add_PropertyChanged__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0131:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0132:
    mov -80(%rbp), %rdi
    lea .LN_22_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0137:
    mov -80(%rbp), %rdi
    lea .LN_23_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_013c:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01e5
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0141:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0142:
    mov -80(%rbp), %rdi
    lea .LN_24_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0147:
    lea .LN_25_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_014c:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_014d:
    mov -96(%rbp), %rdi
    lea .LN_26_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0152:
    mov -96(%rbp), %rdi
    lea .LN_27_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0157:
    mov -96(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_Yggdrasil_Yggdrasil_Models_DirectMessage__gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_015c:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_Skymu_WebServices_Home_Generate__ref_ref_gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0161:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0166:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0168:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_016a:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_016f:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01b2
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0171:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0172:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0173:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0174:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0175:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_28_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_017a:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_017b:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_017d:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_29_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0182:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0183:
    mov -80(%rbp), %rdi
    lea .LN_30_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0188:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_018a:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_018b:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_Skype7_Main_ctor_b_11_0_d__gen_gen
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0190:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_025e
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0195:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0196:
    mov -80(%rbp), %rdi
    lea .LN_31_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_019b:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_019d:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_019e:
    mov -80(%rbp), %rdi
    lea .LN_32_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01a3:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01a9:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01aa:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01ab:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01ac:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01ad:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_33_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01b2:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01b4:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01b9:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_020d
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01bb:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01bc:
    mov -80(%rbp), %rdi
    lea .LN_34_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01c1:
    mov $2, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01c2:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01c7:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01c8:
    mov -80(%rbp), %rdi
    lea .LN_35_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01cd:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01ce:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01d3:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01d4:
    mov -80(%rbp), %rdi
    lea .LN_36_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01d9:
    lea .LN_37_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_HomeUnavailable_ctor__void
    mov %r12, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01de:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01e3:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_020d
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01e5:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01e6:
    mov -80(%rbp), %rdi
    lea .LN_38_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01eb:
    mov $2, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01ec:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01f1:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01f2:
    mov -80(%rbp), %rdi
    lea .LN_39_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01f7:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01f8:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01fd:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_01fe:
    mov -80(%rbp), %rdi
    lea .LN_40_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0203:
    lea .LN_41_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_HomeUnavailable_ctor__void
    mov %r12, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0208:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_020d:
    lea .LS_42_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    mov $305, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0212:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0213:
    mov $2, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0214:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_Skymu_Universal_ShowMessage__ref_ref_v
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0219:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_021a:
    mov -80(%rbp), %rdi
    lea .LN_43_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_021f:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0220:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0225
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0222:
    mov -72(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0223:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0230
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0225:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0226:
    lea .LN_44_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_022b:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_Invoke__ref_ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0230:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_024b
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_024b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_024c:
    mov $-2, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_024e:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_45_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0253:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0254:
    mov -80(%rbp), %rdi
    lea .LN_46_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_0259:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_025e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext__void, .-m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext__void

.globl m_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine__ref
.type m_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine__ref, @function
m_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine__ref, .-m_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine__ref

.globl m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext__void
.type m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext__void, @function
m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $176, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0001:
    mov -120(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0006:
    mov -120(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0008:
    mov -120(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_000d:
    mov -120(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_000f:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0184
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0014:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0015:
    mov -120(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_001a:
    mov -120(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_001f:
    mov -128(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0020:
    mov -40(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0021:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0028
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0023:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01c3
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0028:
    mov -40(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0029:
    mov -128(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_002e:
    mov -136(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_002f:
    mov $0, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0030:
    mov -136(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0031:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0032:
    mov -136(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0037:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_get_Items__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_003c:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerable_GetEnumerator__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0041:
    mov -136(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0043:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0085
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0045:
    mov -56(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0047:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_get_Current__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_004c:
    mov -136(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_004e:
    mov -64(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0050:
    mov -136(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0055:
    mov -144(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0057:
    mov -72(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0059:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0085
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_005b:
    mov -72(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_005d:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0062:
    mov -40(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0063:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0068:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_006d:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0085
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_006f:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0070:
    mov -144(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0075:
    mov -64(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0077:
    mov -152(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -152(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_007c:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedItem__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0081:
    mov $1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0082:
    mov -152(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0083:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_008e
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0085:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0087:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_008c:
    mov -136(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0045
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_008e:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00a9
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00a9:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00aa:
    mov -136(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_014d
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00af:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00b0:
    mov -136(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00b5:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_get_ItemsSource__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00ba:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00bb:
    mov -144(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00c0:
    mov -144(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00c5:
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00d0
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00c7:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00c8:
    mov $1, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00c9:
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_SetActiveTab__i4
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00ce:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00d7
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00d0:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00d1:
    mov $0, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00d2:
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_SetActiveTab__i4
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00d7:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00d8:
    mov -136(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00dd:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_get_Items__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00e2:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerable_GetEnumerator__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00e7:
    mov -136(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00e9:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0129
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00eb:
    mov -56(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00ed:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_get_Current__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00f2:
    mov -136(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00f4:
    mov -88(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00f6:
    mov -136(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00fb:
    mov -144(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00fd:
    mov -96(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00ff:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0129
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0101:
    mov -96(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0103:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0108:
    mov -40(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0109:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_010e:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0113:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0129
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0115:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0116:
    mov -144(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_011b:
    mov -88(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_011d:
    mov -152(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -152(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0122:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedItem__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0127:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0132
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0129:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_012b:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0130:
    mov -136(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_00eb
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0132:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_014d
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_014d:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_014e:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_SetConversation__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0153:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0158:
    mov -136(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_015a:
    lea -104(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_015c:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0161:
    mov -136(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01a1
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0163:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0164:
    mov $0, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0165:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0166:
    mov -144(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0167:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_016c:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_016d:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_016f:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0174:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0175:
    mov -128(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -128(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_017a:
    lea -104(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_017c:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_017d:
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Skype7_Main_ctor_b_11_4_d__gen_gen
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0182:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01d6
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0184:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0185:
    mov -120(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_018a:
    mov -120(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_018c:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_018d:
    mov -120(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0192:
    mov -120(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0198:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_0199:
    mov $-1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_019a:
    mov -128(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_019b:
    mov -128(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_019c:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01a1:
    lea -104(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01a3:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01a8:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01c3
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01c3:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01c4:
    mov $-2, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01c6:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rdi
    lea .LN_16_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01cb:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01cc:
    mov -128(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -128(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01d1:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_01d6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext__void, .-m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext__void

.globl m_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine__ref
.type m_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine__ref, @function
m_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine__ref, .-m_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine__ref

.globl m_Skymu_Skype7_Main_c_cctor__void
.type m_Skymu_Skype7_Main_c_cctor__void, @function
m_Skymu_Skype7_Main_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Skype7_Main_c_cctor_void_0000:
    lea .LN_0_m_Skymu_Skype7_Main_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype7_Main_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Skype7_Main_c_cctor_void_0005:
    lea .LN_1_m_Skymu_Skype7_Main_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Skype7_Main_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_cctor__void, .-m_Skymu_Skype7_Main_c_cctor__void

.globl m_Skymu_Skype7_Main_c_ctor__void
.type m_Skymu_Skype7_Main_c_ctor__void, @function
m_Skymu_Skype7_Main_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype7_Main_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_ctor__void, .-m_Skymu_Skype7_Main_c_ctor__void

.globl m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0__ref_ref
.type m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0__ref_ref, @function
m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref_0001:
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref_0006:
    mov $64, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref_0008:
    mov $255, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref_000d:
    mov $255, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref_0012:
    mov $255, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref_0017:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Windows_Media_Color_FromArgb__u1_u1_u1_u1
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref_001c:
    lea .LN_0_m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_SolidColorBrush_ctor__v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref_0021:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Border_set_Background__ref
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref_0026:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0__ref_ref, .-m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0__ref_ref

.globl m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1__ref_ref
.type m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1__ref_ref, @function
m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1_ref_ref_0001:
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1_ref_ref_0006:
    call m_System_Windows_Media_Brushes_get_Transparent__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1_ref_ref_000b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Border_set_Background__ref
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1_ref_ref_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1__ref_ref, .-m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1__ref_ref

.globl m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor__void
.type m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor__void, @function
m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor__void, .-m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor__void

.globl m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10__void
.type m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10__void, @function
m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void_0006:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void_000c:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void_0011:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void_0012:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void_0013:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void_0018:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void_0019:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10__void, .-m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10__void

.globl m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor__void
.type m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor__void, @function
m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor__void, .-m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor__void

.globl m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11__void
.type m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11__void, @function
m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_0006:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_000c:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_0011:
    mov -40(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoad__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_0016:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_0017:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_0018:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Source__ref
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_001e:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11__void, .-m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11__void

.globl m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor__void
.type m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor__void, @function
m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor__void, .-m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor__void

.globl m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15__ref_ref
.type m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15__ref_ref, @function
m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ExtraConfiguration_get_onRun__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15_ref_ref_000b:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_Invoke__void
.Lm_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15_ref_ref_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15__ref_ref, .-m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15__ref_ref

.globl m_Skymu_Skype7_Main_c_DisplayClass27_0_ctor__void
.type m_Skymu_Skype7_Main_c_DisplayClass27_0_ctor__void, @function
m_Skymu_Skype7_Main_c_DisplayClass27_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass27_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass27_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype7_Main_c_DisplayClass27_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_DisplayClass27_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_DisplayClass27_0_ctor__void, .-m_Skymu_Skype7_Main_c_DisplayClass27_0_ctor__void

.globl m_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0__gen
.type m_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0__gen, @function
m_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0_gen_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0_gen_0002:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_get_Value__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0_gen_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0_gen_0008:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0_gen(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0_gen_000d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0_gen_0012:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0__gen, .-m_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0__gen

.globl m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext__void
.type m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext__void, @function
m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0008:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_000d:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_000f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_009d
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0014:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0015:
    mov -64(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_001a:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_002d
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_001c:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_001d:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0022:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0023:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedIndex__i4
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0028:
    jmp .Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00db
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_002d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_002e:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0033:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0038:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0039:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_003a:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0052
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_003c:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_003d:
    mov -72(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0042:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0043:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_Channels__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0048:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_set_ItemsSource__ref
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_004d:
    jmp .Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00db
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0052:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0053:
    mov -72(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0058:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0059:
    mov -80(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_005e:
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0063:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_SelectedConversation__ref
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0068:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0069:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_SetConversation__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_006e:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0073:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0074:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0076:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_007b:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00b9
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_007d:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_007e:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_007f:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0080:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0081:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0086:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0087:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0088:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_008d:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_008e:
    mov -72(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0093:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0095:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_0096:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Skype7_Main_HandleConversationSelection_d_13__gen_gen
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_009b:
    jmp .Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00ee
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_009d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_009e:
    mov -64(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00a3:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00a4:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00a5:
    mov -64(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00aa:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00b0:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00b1:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00b2:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00b3:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00b4:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00b9:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00bb:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00c0:
    jmp .Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00db
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00db:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00dc:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00de:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00e3:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00e4:
    mov -64(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00e9:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_00ee:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext__void, .-m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext__void

.globl m_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine__ref
.type m_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine__ref, @function
m_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine__ref, .-m_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine__ref

.globl m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext__void
.type m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext__void, @function
m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0046
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0012:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_SendMessage__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0017:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_001c:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_001d:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_001f:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0024:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0062
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0026:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0027:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0028:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0029:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_002a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_002f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0030:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0031:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0037:
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_003c:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_003f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Skype7_Main_SendButton_Click_d_20__gen_gen
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0044:
    jmp .Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0095
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0046:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0047:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_004c:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_004e:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0053:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0059:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_005a:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_005b:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_005c:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_005d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0062:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0064:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0069:
    jmp .Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0082
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0082:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0083:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0085:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_008a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_008b:
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0090:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_0095:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext__void, .-m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext__void

.globl m_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine__ref
.type m_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine__ref, @function
m_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine__ref, .-m_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine__ref

.globl m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext__void
.type m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext__void, @function
m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0008:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_000d:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_000f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0075
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0012:
    mov -64(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0017:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_get_Text__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_001c:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Trim__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0021:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0022:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0023:
    mov -64(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0028:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_002f
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_002a:
    jmp .Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_00b3
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_002f:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0030:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0035:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_Clear__void
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_003a:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_003b:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0040:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0041:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_SendMessage__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0046:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_004b:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_004c:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_004e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0053:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0091
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0055:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0056:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0057:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0058:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0059:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_005f:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0060:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0065:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0066:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_006b:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_006d:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_006e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Skype7_Main_SendMessage_d_16__gen_gen
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0073:
    jmp .Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_00c6
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0075:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0076:
    mov -64(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_007b:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_007c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_007d:
    mov -64(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0082:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0088:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0089:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_008a:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_008b:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_008c:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0091:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0093:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_0098:
    jmp .Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_00b3
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_00b3:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_00b4:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_00b6:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_00bb:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_00bc:
    mov -64(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_00c1:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_00c6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext__void, .-m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext__void

.globl m_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine__ref
.type m_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine__ref, @function
m_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine__ref, .-m_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine__ref

.globl m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext__void
.type m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext__void, @function
m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0001:
    mov -96(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0006:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0008:
    mov -96(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_000d:
    mov -96(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_000f:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_014e
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0014:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0015:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0016:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_001c:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_ClearConversation__void
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0021:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0022:
    mov -96(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0027:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0028:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_002d:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_002e:
    mov -96(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0033:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0034:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0039:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_003a:
    mov -96(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_003f:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0040:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0045:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0046:
    mov -96(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_004b:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0050:
    mov -96(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0051:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0052:
    mov -96(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0057:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0058:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_005d
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_005a:
    xor %eax, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_005b:
    jmp .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0063
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_005d:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_005e:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0063:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0068:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0069:
    mov -96(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_006e:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_006f:
    mov -104(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0074:
    mov -112(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0075:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0076:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_007b
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0078:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0079:
    jmp .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_008d
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_007b:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_007c:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0081:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0082:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0088
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0084:
    mov -104(%rbp), %rax
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0085:
    xor %eax, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0086:
    jmp .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_008d
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0088:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Status__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_008d:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0092:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0093:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00e4
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0095:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0096:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_009b:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_009c:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00ab
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_009e:
    mov -96(%rbp), %rax
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_009f:
    lea -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00a1:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00a7:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00a9:
    jmp .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00b2
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00ab:
    mov -96(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00ac:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00ad:
    lea .LN_9_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_int32_ctor__gen
    mov %r12, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00b2:
    mov -112(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00b4:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00b5:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00b7:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00b9:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Nullable_1_int32_GetValueOrDefault__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00be:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00c0:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    setg %al
    movzbl %al, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00c2:
    lea -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00c4:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Nullable_1_int32_get_HasValue__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00c9:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    and %ecx, %eax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00ca:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00e4
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00cc:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00cd:
    mov -104(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00d2:
    mov -40(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00d3:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00d8:
    mov -112(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_GenerateFromArray__arr
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00dd:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Image_set_Source__ref
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00e2:
    jmp .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0103
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00e4:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00e5:
    mov -104(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00ea:
    mov -40(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00eb:
    mov -112(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00f0:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00f9
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00f2:
    lea .LN_12_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00f7:
    jmp .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00fe
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00f9:
    lea .LN_13_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_00fe:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Image_set_Source__ref
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0103:
    mov -32(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0104:
    mov -104(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0109:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_010a:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_010f:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0110:
    mov -104(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0115:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_SetConversation__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_011a:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_011f:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0121:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0123:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0128:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_016b
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_012a:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_012b:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_012c:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_012d:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_012e:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_16_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0133:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0134:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0136:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_013b:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_013c:
    mov -96(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0141:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0143:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0144:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Skype7_Main_SetConversation_d_15__gen_gen
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0149:
    jmp .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01f8
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_014e:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_014f:
    mov -96(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0154:
    mov -96(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0156:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0157:
    mov -96(%rbp), %rdi
    lea .LN_20_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_015c:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0162:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0163:
    mov $-1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0164:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0165:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0166:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_21_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_016b:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_016d:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0172:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0173:
    mov -104(%rbp), %rdi
    lea .LN_22_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0178:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_017d:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0181
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_017f:
    jmp .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01e5
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0181:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0182:
    mov -104(%rbp), %rdi
    lea .LN_23_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0187:
    mov -32(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0188:
    mov -112(%rbp), %rdi
    lea .LN_24_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_018d:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0192:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGrouper_Build__ref
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0197:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_0198:
    mov -104(%rbp), %rdi
    lea .LN_25_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_019d:
    mov -32(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_019e:
    mov -112(%rbp), %rdi
    lea .LN_26_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01a3:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGrouper_get_Grouped__void
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01a8:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_set_ItemsSource__ref
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01ad:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01ae:
    mov -104(%rbp), %rdi
    lea .LN_27_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01b3:
    mov $2, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01b4:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01b9:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01ba:
    mov -104(%rbp), %rdi
    lea .LN_28_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01bf:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01c0:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01c5
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01c2:
    mov -96(%rbp), %rax
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01c3:
    jmp .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01ca
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01c5:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ScrollViewer_ScrollToEnd__void
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01ca:
    jmp .Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01e5
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01e5:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01e6:
    mov $-2, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01e8:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_29_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01ed:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01ee:
    mov -104(%rbp), %rdi
    lea .LN_30_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01f3:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_01f8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext__void, .-m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext__void

.globl m_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine__ref
.type m_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine__ref, @function
m_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine__ref, .-m_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine__ref

.globl m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext__void
.type m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext__void, @function
m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0001:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0006:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0008:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_000d:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_000f:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00dc
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0014:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0015:
    mov -80(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_001a:
    mov -80(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_001f:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0020:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0021:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0028
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0023:
    jmp .Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_014a
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0028:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0029:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_Name__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_002e:
    mov $3, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_002f:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0034:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0035:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0036:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0037:
    mov -96(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_003c:
    mov -96(%rbp), %rdi
    call m_Skymu_ViewModels_MainViewModel_GetStatusFromInt__i4
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0041:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0046:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0047:
    lea .LS_5_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_004c:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0051:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_005e
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0053:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0054:
    mov -88(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0059:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_InformDND__void
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_005e:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_005f:
    mov -88(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0064:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0065:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_006a:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_006c:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_006e:
    mov $9, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0070:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0077
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0072:
    jmp .Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_014a
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0077:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0078:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_007a:
    mov -96(%rbp), %rdi
    call m_Skymu_ViewModels_MainViewModel_GetIntFromStatus__v
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_007f:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0084:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0085:
    mov -88(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_008a:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_008c:
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0092:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0097:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_009c:
    lea .LN_10_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00a1:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00a3:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_SetConnectionStatus__v
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00a8:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00ad:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00af:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00b1:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00b6:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00f9
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00b8:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00b9:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00ba:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00bb:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00bc:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00c1:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00c2:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00c4:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00c9:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00ca:
    mov -80(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00cf:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00d1:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00d2:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_Skype7_Main_StatusMenuItemClick_d_31__gen_gen
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00d7:
    jmp .Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_015d
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00dc:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00dd:
    mov -80(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00e2:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00e4:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00e5:
    mov -80(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00ea:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00f0:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00f1:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00f2:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00f3:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00f4:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_16_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00f9:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_00fb:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0100:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_012f
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0102:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0103:
    mov -88(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0108:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_010a:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_010b:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_010d:
    mov -96(%rbp), %rdi
    call m_Skymu_ViewModels_MainViewModel_GetIntFromStatus__v
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0112:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0117:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0118:
    mov -88(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_011d:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_011f:
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0125:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_012a:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_012f:
    jmp .Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_014a
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_014a:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_014b:
    mov $-2, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_014d:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_20_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0152:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0153:
    mov -88(%rbp), %rdi
    lea .LN_21_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_0158:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_015d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext__void, .-m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext__void

.globl m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine__ref
.type m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine__ref, @function
m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine__ref, .-m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine__ref

.globl m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext__void
.type m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext__void, @function
m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0008:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_000d:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_000f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_005e
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0012:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0013:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_SetActiveTab__i4
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0019:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_001a:
    mov -72(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_001f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0025:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_002a:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_GetServerList__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_002f:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0034:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0035:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0037:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_IsCompleted__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_003c:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_007a
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_003f:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0040:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0041:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0042:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0047:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0048:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0049:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_004e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_004f:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0054:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0056:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0057:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Collections_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_Server_valuetype_Skymu_Skype7_Main_TabServers_Click_d_40__gen_gen
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_005c:
    jmp .Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_00c3
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_005f:
    mov -64(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0064:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0065:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0066:
    mov -64(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_006b:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0071:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0072:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0073:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0074:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0075:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_007a:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_007c:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_GetResult__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0081:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0082:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0083:
    mov -64(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0088:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0089:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_set_ItemsSource__ref
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_008e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_008f:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0090:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_0095:
    jmp .Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_00b0
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_00b0:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_00b1:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_00b3:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_00b8:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_00b9:
    mov -64(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_00be:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_00c3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext__void, .-m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext__void

.globl m_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine__ref
.type m_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine__ref, @function
m_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine__ref, .-m_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine__ref

.globl m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext__void
.type m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext__void, @function
m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0077
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0012:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0017:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Input_KeyEventArgs_get_Key__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_001c:
    mov $6, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_001d:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_009a
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_001f:
    call m_System_Windows_Input_Keyboard_get_Modifiers__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0024:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0029:
    mov $4, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_002a:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_box
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_002f:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Enum_HasFlag__ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0034:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_009a
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0037:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_003c:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_003d:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_RoutedEventArgs_set_Handled__b
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0042:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0043:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_SendMessage__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0048:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_004d:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_004e:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0050:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0055:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0093
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0057:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0058:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0059:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_005a:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_005b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0060:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0061:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0062:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0067:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0068:
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_006d:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_006f:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0070:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21__gen_gen
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0075:
    jmp .Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_00c6
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0077:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0078:
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_007d:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_007e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_007f:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0084:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_008a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_008b:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_008c:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_008d:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_008e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0093:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_0095:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_009a:
    jmp .Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_00b3
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_00b3:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_00b4:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_00b6:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_00bb:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_00bc:
    mov -56(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_00c1:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_00c6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext__void, .-m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext__void

.globl m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine__ref
.type m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine__ref, @function
m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine__ref, .-m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine__ref

.globl m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext__void
.type m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext__void, @function
m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_004b
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0012:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0017:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_RunSpeedTest__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_001c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0021:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0022:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0024:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0029:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0067
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_002c:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_002d:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_002e:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_002f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0034:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0035:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0036:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_003b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_003c:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0041:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0043:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0044:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Skype7_Main_WifiButton_Click_d_29__gen_gen
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0049:
    jmp .Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_009a
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_004b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_004c:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0051:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0052:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0053:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0058:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_005f:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0060:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0061:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0062:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0067:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0069:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_006e:
    jmp .Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0087
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0087:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0088:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_008a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_008f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0090:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_0095:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_009a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext__void, .-m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext__void

.globl m_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine__ref
.type m_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine__ref, @function
m_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine__ref, .-m_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine__ref

.globl m_Skymu_Skype7_Main_get_is_loading_conversation__void
.type m_Skymu_Skype7_Main_get_is_loading_conversation__void, @function
m_Skymu_Skype7_Main_get_is_loading_conversation__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_get_is_loading_conversation_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_get_is_loading_conversation_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_get_is_loading_conversation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_get_is_loading_conversation_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_get_is_loading_conversation_void_0007:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_get_is_loading_conversation_void_000c
.Lm_Skymu_Skype7_Main_get_is_loading_conversation_void_0009:
    mov -16(%rbp), %rax
.Lm_Skymu_Skype7_Main_get_is_loading_conversation_void_000a:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_get_is_loading_conversation_void_000b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_get_is_loading_conversation_void_000c:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation__void
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Skype7_Main_get_is_loading_conversation_void_0011:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_get_is_loading_conversation_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_get_is_loading_conversation__void, .-m_Skymu_Skype7_Main_get_is_loading_conversation__void

.globl m_Skymu_Skype7_Main_add_Ready__ref
.type m_Skymu_Skype7_Main_add_Ready__ref, @function
m_Skymu_Skype7_Main_add_Ready__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_add_Ready_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0010:
.Lm_Skymu_Skype7_Main_add_Ready_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_add_Ready_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_add_Ready_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Skype7_Main_add_Ready_ref_0007
.Lm_Skymu_Skype7_Main_add_Ready_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_add_Ready_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_add_Ready__ref, .-m_Skymu_Skype7_Main_add_Ready__ref

.globl m_Skymu_Skype7_Main_remove_Ready__ref
.type m_Skymu_Skype7_Main_remove_Ready__ref, @function
m_Skymu_Skype7_Main_remove_Ready__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_remove_Ready_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0010:
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_remove_Ready_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Skype7_Main_remove_Ready_ref_0007
.Lm_Skymu_Skype7_Main_remove_Ready_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_remove_Ready_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_remove_Ready__ref, .-m_Skymu_Skype7_Main_remove_Ready__ref

.globl m_Skymu_Skype7_Main_ctor__void
.type m_Skymu_Skype7_Main_ctor__void, @function
m_Skymu_Skype7_Main_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0001:
    movsd .LD_0_m_Skymu_Skype7_Main_ctor_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_000a:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_void_000f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0010:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_ctor__void
.Lm_Skymu_Skype7_Main_ctor_void_0015:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0016:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0017:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_001d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_InitializeComponent__void
.Lm_Skymu_Skype7_Main_ctor_void_0022:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0028:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_set_MainWindow__ref
.Lm_Skymu_Skype7_Main_ctor_void_002d:
    call m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars__void
.Lm_Skymu_Skype7_Main_ctor_void_0032:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0033:
    lea .LN_3_m_Skymu_Skype7_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0038:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_void_003d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_003f:
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0044:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_DataContext__ref
.Lm_Skymu_Skype7_Main_ctor_void_0049:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_004a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_004b:
    mov -32(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0050:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0055:
    lea .LN_7_m_Skymu_Skype7_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Skype7_MessageGrouper_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_005a:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_void_005f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0060:
    mov -24(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0065:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0066:
    lea m_Skymu_Skype7_Main_ctor_b_11_0__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_006c:
    lea .LN_10_m_Skymu_Skype7_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0071:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_add_Ready__ref
.Lm_Skymu_Skype7_Main_ctor_void_0076:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0077:
    mov -24(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_007c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_007d:
    lea m_Skymu_Skype7_Main_ctor_b_11_1__ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0083:
    lea .LN_12_m_Skymu_Skype7_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_1_string_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0088:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_add_UserCountUpdated__gen
.Lm_Skymu_Skype7_Main_ctor_void_008d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_008e:
    mov -24(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0093:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0094:
    lea m_Skymu_Skype7_Main_ctor_b_11_2__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_009a:
    lea .LN_14_m_Skymu_Skype7_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_009f:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_add_SignOutRequested__gen
.Lm_Skymu_Skype7_Main_ctor_void_00a4:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00a5:
    mov -24(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00aa:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00ab:
    lea m_Skymu_Skype7_Main_ctor_b_11_3__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00b1:
    lea .LN_16_m_Skymu_Skype7_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00b6:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged__ref
.Lm_Skymu_Skype7_Main_ctor_void_00bb:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00bc:
    mov -24(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00c1:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00c2:
    lea m_Skymu_Skype7_Main_ctor_b_11_4__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00c8:
    lea .LN_18_m_Skymu_Skype7_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00cd:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_add_ConversationChanged__ref
.Lm_Skymu_Skype7_Main_ctor_void_00d2:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00d3:
    mov -24(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00d8:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00d9:
    lea m_Skymu_Skype7_Main_ctor_b_11_5__ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00df:
    lea .LN_20_m_Skymu_Skype7_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_1_string_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00e4:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated__gen
.Lm_Skymu_Skype7_Main_ctor_void_00e9:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00ea:
    mov -24(%rbp), %rdi
    lea .LN_21_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00ef:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00f0:
    lea m_Skymu_Skype7_Main_ctor_b_11_6__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00f6:
    lea .LN_22_m_Skymu_Skype7_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_PropertyChangedEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_00fb:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_CommunityToolkit_Mvvm_ComponentModel_ObservableObject_add_PropertyChanged__ref
.Lm_Skymu_Skype7_Main_ctor_void_0100:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0101:
    mov -24(%rbp), %rdi
    lea .LN_23_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0106:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator__void
.Lm_Skymu_Skype7_Main_ctor_void_010b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_010c:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_InitializeEmojiPicker__void
.Lm_Skymu_Skype7_Main_ctor_void_0111:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0112:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0113:
    lea m_Skymu_Skype7_Main_ctor_b_11_7__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0119:
    lea .LN_24_m_Skymu_Skype7_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_011e:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_add_SourceInitialized__ref
.Lm_Skymu_Skype7_Main_ctor_void_0123:
    lea .LN_25_m_Skymu_Skype7_Main_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0128:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_SupportsServers__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_012d:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_void_013b
.Lm_Skymu_Skype7_Main_ctor_void_012f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0130:
    mov -24(%rbp), %rdi
    lea .LN_26_m_Skymu_Skype7_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0135:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_0136:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_ctor_void_013b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_013c:
    mov $3, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_void_013d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_SetActiveTab__i4
.Lm_Skymu_Skype7_Main_ctor_void_0142:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor__void, .-m_Skymu_Skype7_Main_ctor__void

.globl m_Skymu_Skype7_Main_BeginLoading__void
.type m_Skymu_Skype7_Main_BeginLoading__void, @function
m_Skymu_Skype7_Main_BeginLoading__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_BeginLoading_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_BeginLoading_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_BeginLoading_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_BeginLoading_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_InitSidebar__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_BeginLoading_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_BeginLoading_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_BeginLoading__void, .-m_Skymu_Skype7_Main_BeginLoading__void

.globl m_Skymu_Skype7_Main_HandleConversationSelection__ref
.type m_Skymu_Skype7_Main_HandleConversationSelection__ref, @function
m_Skymu_Skype7_Main_HandleConversationSelection__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_HandleConversationSelection_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_HandleConversationSelection_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_HandleConversationSelection_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_HandleConversationSelection_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_HandleConversationSelection_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype7_Main_HandleConversationSelection_d_13__gen
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_HandleConversationSelection_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_HandleConversationSelection__ref, .-m_Skymu_Skype7_Main_HandleConversationSelection__ref

.globl m_Skymu_Skype7_Main_ClearConversation__void
.type m_Skymu_Skype7_Main_ClearConversation__void, @function
m_Skymu_Skype7_Main_ClearConversation__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_0000:
    lea .LN_0_m_Skymu_Skype7_Main_ClearConversation_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_0005:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ClearConversation_void_000b
.Lm_Skymu_Skype7_Main_ClearConversation_void_0008:
    mov -16(%rbp), %rax
.Lm_Skymu_Skype7_Main_ClearConversation_void_0009:
    jmp .Lm_Skymu_Skype7_Main_ClearConversation_void_001b
.Lm_Skymu_Skype7_Main_ClearConversation_void_000b:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_0010:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_0011:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ClearConversation_void_0016
.Lm_Skymu_Skype7_Main_ClearConversation_void_0013:
    mov -16(%rbp), %rax
.Lm_Skymu_Skype7_Main_ClearConversation_void_0014:
    jmp .Lm_Skymu_Skype7_Main_ClearConversation_void_001b
.Lm_Skymu_Skype7_Main_ClearConversation_void_0016:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_Clear__void
    mov %rax, -16(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_001b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_001c:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ClearConversation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_0021:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_0022:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_set_ItemsSource__ref
.Lm_Skymu_Skype7_Main_ClearConversation_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_0028:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_ClearConversation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_002d:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_002e:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ClearConversation_void_0033
.Lm_Skymu_Skype7_Main_ClearConversation_void_0030:
    mov -16(%rbp), %rax
.Lm_Skymu_Skype7_Main_ClearConversation_void_0031:
    jmp .Lm_Skymu_Skype7_Main_ClearConversation_void_0038
.Lm_Skymu_Skype7_Main_ClearConversation_void_0033:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGrouper_Clear__void
.Lm_Skymu_Skype7_Main_ClearConversation_void_0038:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_0039:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_ClearConversation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ClearConversation_void_003e:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_ClearActiveConversation__void
.Lm_Skymu_Skype7_Main_ClearConversation_void_0043:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ClearConversation_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ClearConversation__void, .-m_Skymu_Skype7_Main_ClearConversation__void

.globl m_Skymu_Skype7_Main_SetConversation__void
.type m_Skymu_Skype7_Main_SetConversation__void, @function
m_Skymu_Skype7_Main_SetConversation__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_SetConversation_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetConversation_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_SetConversation_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetConversation_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_SetConversation_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetConversation_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_SetConversation_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_Skype7_Main_SetConversation_d_15__gen
.Lm_Skymu_Skype7_Main_SetConversation_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_SetConversation_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetConversation_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_SetConversation_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_SetConversation__void, .-m_Skymu_Skype7_Main_SetConversation__void

.globl m_Skymu_Skype7_Main_SendMessage__void
.type m_Skymu_Skype7_Main_SendMessage__void, @function
m_Skymu_Skype7_Main_SendMessage__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_SendMessage_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendMessage_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_SendMessage_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendMessage_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_SendMessage_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendMessage_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_SendMessage_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_Skype7_Main_SendMessage_d_16__gen
.Lm_Skymu_Skype7_Main_SendMessage_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_SendMessage_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendMessage_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_SendMessage_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_SendMessage__void, .-m_Skymu_Skype7_Main_SendMessage__void

.globl m_Skymu_Skype7_Main_InitiateSignOut__ref
.type m_Skymu_Skype7_Main_InitiateSignOut__ref, @function
m_Skymu_Skype7_Main_InitiateSignOut__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_InitiateSignOut_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_InitiateSignOut_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_InitiateSignOut_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_InitiateSignOut_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_InitiateSignOut_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_InitiateSignOut__b
.Lm_Skymu_Skype7_Main_InitiateSignOut_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_InitiateSignOut_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_InitiateSignOut__ref, .-m_Skymu_Skype7_Main_InitiateSignOut__ref

.globl m_Skymu_Skype7_Main_ConversationList_SelectionChanged__ref_ref
.type m_Skymu_Skype7_Main_ConversationList_SelectionChanged__ref_ref, @function
m_Skymu_Skype7_Main_ConversationList_SelectionChanged__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_000b
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_0003:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_0004:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_0005:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_HandleConversationSelection__ref
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_000c:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_000d:
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_0012:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_get_SelectedItem__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_0017:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_HandleConversationSelection__ref
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_001c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ConversationList_SelectionChanged_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ConversationList_SelectionChanged__ref_ref, .-m_Skymu_Skype7_Main_ConversationList_SelectionChanged__ref_ref

.globl m_Skymu_Skype7_Main_SendButton_Click__ref_ref
.type m_Skymu_Skype7_Main_SendButton_Click__ref_ref, @function
m_Skymu_Skype7_Main_SendButton_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_SendButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_SendButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_0016:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_SendButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_001e:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_SendButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype7_Main_SendButton_Click_d_20__gen
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_SendButton_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_SendButton_Click__ref_ref, .-m_Skymu_Skype7_Main_SendButton_Click__ref_ref

.globl m_Skymu_Skype7_Main_TextBoxMessage_KeyDown__ref_ref
.type m_Skymu_Skype7_Main_TextBoxMessage_KeyDown__ref_ref, @function
m_Skymu_Skype7_Main_TextBoxMessage_KeyDown__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_0016:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_001e:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_0026:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_002b:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_002d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21__gen
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_TextBoxMessage_KeyDown__ref_ref, .-m_Skymu_Skype7_Main_TextBoxMessage_KeyDown__ref_ref

.globl m_Skymu_Skype7_Main_Window_Activated__ref_ref
.type m_Skymu_Skype7_Main_Window_Activated__ref_ref, @function
m_Skymu_Skype7_Main_Window_Activated__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_Window_Activated_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_Window_Activated_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_Window_Activated_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_Window_Activated_ref_ref_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_Window_Activated_ref_ref_0014
.Lm_Skymu_Skype7_Main_Window_Activated_ref_ref_0008:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_Window_Activated_ref_ref_0009:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_Window_Activated_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_Window_Activated_ref_ref_000e:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_Window_Activated_ref_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_Window_Activated_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_Window_Activated_ref_ref_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_Window_Activated_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_Window_Activated__ref_ref, .-m_Skymu_Skype7_Main_Window_Activated__ref_ref

.globl m_Skymu_Skype7_Main_Window_Deactivated__ref_ref
.type m_Skymu_Skype7_Main_Window_Deactivated__ref_ref, @function
m_Skymu_Skype7_Main_Window_Deactivated__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_Window_Deactivated_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_Window_Deactivated_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_Window_Deactivated_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_Window_Deactivated_ref_ref_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_Window_Deactivated_ref_ref_0014
.Lm_Skymu_Skype7_Main_Window_Deactivated_ref_ref_0008:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_Window_Deactivated_ref_ref_0009:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_Window_Deactivated_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_Window_Deactivated_ref_ref_000e:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_Window_Deactivated_ref_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_Window_Deactivated_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_Window_Deactivated_ref_ref_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_Window_Deactivated_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_Window_Deactivated__ref_ref, .-m_Skymu_Skype7_Main_Window_Deactivated__ref_ref

.globl m_Skymu_Skype7_Main_Window_Closing__ref_ref
.type m_Skymu_Skype7_Main_Window_Closing__ref_ref, @function
m_Skymu_Skype7_Main_Window_Closing__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_Window_Closing_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_Window_Closing_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_Window_Closing_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_Window_Closing_ref_ref_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_Window_Closing_ref_ref_000e
.Lm_Skymu_Skype7_Main_Window_Closing_ref_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_Window_Closing_ref_ref_0009:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_Hide__ref
.Lm_Skymu_Skype7_Main_Window_Closing_ref_ref_000e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_Window_Closing_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_Window_Closing__ref_ref, .-m_Skymu_Skype7_Main_Window_Closing__ref_ref

.globl m_Skymu_Skype7_Main_MessageScrollFeed_Loaded__ref_ref
.type m_Skymu_Skype7_Main_MessageScrollFeed_Loaded__ref_ref, @function
m_Skymu_Skype7_Main_MessageScrollFeed_Loaded__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_0002:
    mov -48(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_000d:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_0012:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_002b
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_0015:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_001a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_001b:
    lea m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_b_25_0__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_0021:
    lea .LN_3_m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_ScrollChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_0026:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ScrollViewer_add_ScrollChanged__ref
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_002b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_MessageScrollFeed_Loaded__ref_ref, .-m_Skymu_Skype7_Main_MessageScrollFeed_Loaded__ref_ref

.globl m_Skymu_Skype7_Main_InitializeEmojiPicker__void
.type m_Skymu_Skype7_Main_InitializeEmojiPicker__void, @function
m_Skymu_Skype7_Main_InitializeEmojiPicker__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0006:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_000b:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_GetEnumerator__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0010:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0011:
    jmp .Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_010e
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0016:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0017:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_get_Current__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_001c:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_001d:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0022:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0023:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0028:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0029:
    lea .LN_3_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Controls_Border_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_002e:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_002f:
    movsd .LD_4_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0038:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Width__f8
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_003d:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_003e:
    movsd .LD_5_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0047:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Height__f8
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_004c:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_004d:
    movsd .LD_6_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0056:
    lea .LN_7_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Thickness_ctor__f8
    mov %r12, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_005b:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Margin__v
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0060:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0061:
    call m_System_Windows_Media_Brushes_get_Transparent__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0066:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Border_set_Background__ref
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_006b:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_006c:
    call m_System_Windows_Input_Cursors_get_Hand__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0071:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Cursor__ref
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0076:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0077:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0078:
    mov -72(%rbp), %rdi
    call m_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_007d:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_ToolTip__ref
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0082:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0083:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0084:
    mov -64(%rbp), %rdi
    call m_Skymu_Formatting_Formatter_MakeEmoji__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0089:
    mov -64(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_008b:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_008d:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_008e:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Tag__ref
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0093:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0094:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0096:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Decorator_set_Child__ref
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_009b:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_009c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_009d:
    lea m_Skymu_Skype7_Main_EmojiBox_Click__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00a3:
    lea .LN_8_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00a8:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00ad:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00ae:
    lea .LN_9_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00b3:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00b4:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00cd
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00b6:
    mov -64(%rbp), %rax
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00b7:
    lea .LN_10_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00bc:
    lea m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0__ref_ref(%rip), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00c2:
    lea .LN_11_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00c7:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00c8:
    lea .LN_12_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rdi
    call shim_global_slot
    mov -64(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00cd:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseEnter__ref
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00d2:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00d3:
    lea .LN_13_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00d8:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00d9:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00f2
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00db:
    mov -64(%rbp), %rax
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00dc:
    lea .LN_14_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00e1:
    lea m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_1__ref_ref(%rip), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00e7:
    lea .LN_15_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00ec:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00ed:
    lea .LN_16_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rdi
    call shim_global_slot
    mov -64(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00f2:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeave__ref
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00f7:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00f8:
    mov -64(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype7_Main_InitializeEmojiPicker_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_00fd:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0102:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0103:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_Add__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0108:
    mov -64(%rbp), %rax
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0109:
    jmp .Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_010e
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_010e:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_010f:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0114:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0016
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0119:
    jmp .Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0125
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_0125:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_InitializeEmojiPicker_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_InitializeEmojiPicker__void, .-m_Skymu_Skype7_Main_InitializeEmojiPicker__void

.globl m_Skymu_Skype7_Main_EmojiBox_Click__ref_ref
.type m_Skymu_Skype7_Main_EmojiBox_Click__ref_ref, @function
m_Skymu_Skype7_Main_EmojiBox_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0000:
    lea .LN_0_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype7_Main_c_DisplayClass27_0_ctor__void
    mov %r12, -88(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0005:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0007:
    mov -88(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_000c:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_000d:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0013
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_000f:
    mov -88(%rbp), %rax
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0010:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0011:
    jmp .Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0018
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0013:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Decorator_get_Child__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0018:
    mov -88(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_001d:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_001e:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_001f:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0022
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0021:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0022:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0023:
    mov -96(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0028:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0029:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Popup_set_IsOpen__b
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_002e:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_002f:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0030:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_Tag__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0035:
    mov -104(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_003a:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_003f:
    lea .LN_3_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0044:
    mov -40(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0045:
    lea m_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0__gen(%rip), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_004b:
    lea .LN_4_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -112(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0050:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_valuetype_System_Runtime_System_Collections_Generic_KeyValuePair_2_string_string__gen_gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0055:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0057:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0059:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_get_Key__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_005e:
    mov -104(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_005f:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0060:
    mov -104(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0065:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0068
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0067:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0068:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0069:
    mov -104(%rbp), %rdi
    call m_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode__ref
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_006e:
    mov -104(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_006f:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0070:
    mov -104(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0075:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_get_CaretIndex__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_007a:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_007c:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_007d:
    mov -104(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0082:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0083:
    mov -112(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0088:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_get_Text__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_008d:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_008f:
    mov -64(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0090:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Insert__i4_ref
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_0095:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_set_Text__ref
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_009a:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_009b:
    mov -104(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_00a0:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_00a2:
    mov -64(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_00a3:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_get_Length__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_00a8:
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_00a9:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_set_CaretIndex__i4
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_00ae:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_00af:
    mov -104(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_00b4:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_Focus__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_00b9:
    mov -104(%rbp), %rax
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_00ba:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_EmojiBox_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_EmojiBox_Click__ref_ref, .-m_Skymu_Skype7_Main_EmojiBox_Click__ref_ref

.globl m_Skymu_Skype7_Main_EmojiButton_Click__ref_ref
.type m_Skymu_Skype7_Main_EmojiButton_Click__ref_ref, @function
m_Skymu_Skype7_Main_EmojiButton_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_EmojiButton_Click_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_EmojiButton_Click_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_EmojiButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_EmojiButton_Click_ref_ref_0006:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_EmojiButton_Click_ref_ref_0007:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Popup_set_IsOpen__b
.Lm_Skymu_Skype7_Main_EmojiButton_Click_ref_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_EmojiButton_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_EmojiButton_Click__ref_ref, .-m_Skymu_Skype7_Main_EmojiButton_Click__ref_ref

.globl m_Skymu_Skype7_Main_WifiButton_Click__ref_ref
.type m_Skymu_Skype7_Main_WifiButton_Click__ref_ref, @function
m_Skymu_Skype7_Main_WifiButton_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_WifiButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_WifiButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_0016:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_WifiButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_001e:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_WifiButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype7_Main_WifiButton_Click_d_29__gen
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_WifiButton_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_WifiButton_Click__ref_ref, .-m_Skymu_Skype7_Main_WifiButton_Click__ref_ref

.globl m_Skymu_Skype7_Main_StatusMenuItemClick__ref_ref
.type m_Skymu_Skype7_Main_StatusMenuItemClick__ref_ref, @function
m_Skymu_Skype7_Main_StatusMenuItemClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_001e:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_0026:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_002b:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_002d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype7_Main_StatusMenuItemClick_d_31__gen
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_StatusMenuItemClick__ref_ref, .-m_Skymu_Skype7_Main_StatusMenuItemClick__ref_ref

.globl m_Skymu_Skype7_Main_get_ActiveTab__void
.type m_Skymu_Skype7_Main_get_ActiveTab__void, @function
m_Skymu_Skype7_Main_get_ActiveTab__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_get_ActiveTab_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_get_ActiveTab_void_0001:
    lea .LN_0_m_Skymu_Skype7_Main_get_ActiveTab_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_get_ActiveTab_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_get_ActiveTab_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_get_ActiveTab_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_get_ActiveTab_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_get_ActiveTab__void, .-m_Skymu_Skype7_Main_get_ActiveTab__void

.globl m_Skymu_Skype7_Main_set_ActiveTab__i4
.type m_Skymu_Skype7_Main_set_ActiveTab__i4, @function
m_Skymu_Skype7_Main_set_ActiveTab__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_set_ActiveTab_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_set_ActiveTab_i4_0001:
    lea .LN_0_m_Skymu_Skype7_Main_set_ActiveTab_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_set_ActiveTab_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_set_ActiveTab_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_set_ActiveTab_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_set_ActiveTab_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_Skype7_Main_set_ActiveTab_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_set_ActiveTab_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_set_ActiveTab__i4, .-m_Skymu_Skype7_Main_set_ActiveTab__i4

.globl m_Skymu_Skype7_Main_SetActiveTab__i4
.type m_Skymu_Skype7_Main_SetActiveTab__i4, @function
m_Skymu_Skype7_Main_SetActiveTab__i4:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0002:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_set_ActiveTab__i4
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0008:
    mov -32(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Skype7_Main_SetActiveTab_i4_001f
    cmp $1, %eax
    je .Lm_Skymu_Skype7_Main_SetActiveTab_i4_0030
    cmp $2, %eax
    je .Lm_Skymu_Skype7_Main_SetActiveTab_i4_0041
    cmp $3, %eax
    je .Lm_Skymu_Skype7_Main_SetActiveTab_i4_0061
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_001d:
    jmp .Lm_Skymu_Skype7_Main_SetActiveTab_i4_0052
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_001f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0020:
    movsd .LD_0_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0029:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_002e:
    jmp .Lm_Skymu_Skype7_Main_SetActiveTab_i4_0061
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0030:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0031:
    movsd .LD_2_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_003a:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_003f:
    jmp .Lm_Skymu_Skype7_Main_SetActiveTab_i4_0061
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0041:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0042:
    movsd .LD_4_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_004b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0050:
    jmp .Lm_Skymu_Skype7_Main_SetActiveTab_i4_0061
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0052:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0053:
    movsd .LD_6_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_005c:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0061:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0062:
    mov -32(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0067:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0068:
    mov -40(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_006d:
    movsd .LD_10_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0076:
    movsd .LD_11_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_007f:
    movsd .LD_12_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0088:
    lea .LN_13_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %r8
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Thickness_ctor__f8_f8_f8_f8
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_008d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Margin__v
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0092:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0093:
    mov $3, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0094:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype7_Main_SetActiveTab_i4_00d2
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0096:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_0097:
    mov -32(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_009c:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_009d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00a2:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00a3:
    mov -32(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00a8:
    mov -32(%rbp), %rdi
    lea .LN_16_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00ad:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_SetActiveTab_i4_00bd
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00af:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00b0:
    mov -32(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00b5:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00b6:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00bb:
    jmp .Lm_Skymu_Skype7_Main_SetActiveTab_i4_00c9
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00bd:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00be:
    mov -32(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00c3:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00c4:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00c9:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00ca:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00cb:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00cc:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_ConversationList_SelectionChanged__ref_ref
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00d1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00d2:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00d3:
    mov -32(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00d8:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00d9:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00de:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00df:
    mov -32(%rbp), %rdi
    lea .LN_20_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00e4:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00e5:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00ea:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00eb:
    mov -32(%rbp), %rdi
    lea .LN_21_m_Skymu_Skype7_Main_SetActiveTab_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00f0:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00f1:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_00f6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_SetActiveTab_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_SetActiveTab__i4, .-m_Skymu_Skype7_Main_SetActiveTab__i4

.globl m_Skymu_Skype7_Main_TabContacts_Click__ref_ref
.type m_Skymu_Skype7_Main_TabContacts_Click__ref_ref, @function
m_Skymu_Skype7_Main_TabContacts_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_TabContacts_Click_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TabContacts_Click_ref_ref_0001:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabContacts_Click_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_SetActiveTab__i4
.Lm_Skymu_Skype7_Main_TabContacts_Click_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TabContacts_Click_ref_ref_0008:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_TabContacts_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TabContacts_Click_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabContacts_Click_ref_ref_000e:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_TabContacts_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabContacts_Click_ref_ref_0013:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_TabContacts_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabContacts_Click_ref_ref_0018:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_set_ItemsSource__ref
.Lm_Skymu_Skype7_Main_TabContacts_Click_ref_ref_001d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_TabContacts_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_TabContacts_Click__ref_ref, .-m_Skymu_Skype7_Main_TabContacts_Click__ref_ref

.globl m_Skymu_Skype7_Main_TabRecent_Click__ref_ref
.type m_Skymu_Skype7_Main_TabRecent_Click__ref_ref, @function
m_Skymu_Skype7_Main_TabRecent_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_TabRecent_Click_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TabRecent_Click_ref_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabRecent_Click_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_SetActiveTab__i4
.Lm_Skymu_Skype7_Main_TabRecent_Click_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TabRecent_Click_ref_ref_0008:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_TabRecent_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TabRecent_Click_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabRecent_Click_ref_ref_000e:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_TabRecent_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabRecent_Click_ref_ref_0013:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_TabRecent_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabRecent_Click_ref_ref_0018:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_set_ItemsSource__ref
.Lm_Skymu_Skype7_Main_TabRecent_Click_ref_ref_001d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_TabRecent_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_TabRecent_Click__ref_ref, .-m_Skymu_Skype7_Main_TabRecent_Click__ref_ref

.globl m_Skymu_Skype7_Main_TabServers_Click__ref_ref
.type m_Skymu_Skype7_Main_TabServers_Click__ref_ref, @function
m_Skymu_Skype7_Main_TabServers_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_TabServers_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_TabServers_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_0016:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_TabServers_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_001e:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_TabServers_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype7_Main_TabServers_Click_d_40__gen
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_TabServers_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_TabServers_Click__ref_ref, .-m_Skymu_Skype7_Main_TabServers_Click__ref_ref

.globl m_Skymu_Skype7_Main_TabHome_Click__ref_ref
.type m_Skymu_Skype7_Main_TabHome_Click__ref_ref, @function
m_Skymu_Skype7_Main_TabHome_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_TabHome_Click_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_TabHome_Click_ref_ref_0001:
    mov $3, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_TabHome_Click_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_SetActiveTab__i4
.Lm_Skymu_Skype7_Main_TabHome_Click_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_TabHome_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_TabHome_Click__ref_ref, .-m_Skymu_Skype7_Main_TabHome_Click__ref_ref

.globl m_Skymu_Skype7_Main_AddContact_Click__ref_ref
.type m_Skymu_Skype7_Main_AddContact_Click__ref_ref, @function
m_Skymu_Skype7_Main_AddContact_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_AddContact_Click_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_AddContact_Click_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_AddContact_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_AddContact_Click_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow__void
.Lm_Skymu_Skype7_Main_AddContact_Click_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_AddContact_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_AddContact_Click__ref_ref, .-m_Skymu_Skype7_Main_AddContact_Click__ref_ref

.globl m_Skymu_Skype7_Main_TextBoxSearch_TextChanged__ref_ref
.type m_Skymu_Skype7_Main_TextBoxSearch_TextChanged__ref_ref, @function
m_Skymu_Skype7_Main_TextBoxSearch_TextChanged__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_TextBoxSearch_TextChanged_ref_ref_0000:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_TextBoxSearch_TextChanged_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_TextBoxSearch_TextChanged__ref_ref, .-m_Skymu_Skype7_Main_TextBoxSearch_TextChanged__ref_ref

.globl m_Skymu_Skype7_Main_InitializeComponent__void
.type m_Skymu_Skype7_Main_InitializeComponent__void, @function
m_Skymu_Skype7_Main_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_InitializeComponent_void_0009
.Lm_Skymu_Skype7_Main_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Skype7_Main_InitializeComponent_void(%rip), %rdi
    mov $40, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Skype7_Main_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Skype7_Main_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_InitializeComponent__void, .-m_Skymu_Skype7_Main_InitializeComponent__void

.globl m_Skymu_Skype7_Main_CreateDelegate__ref_ref
.type m_Skymu_Skype7_Main_CreateDelegate__ref_ref, @function
m_Skymu_Skype7_Main_CreateDelegate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_CreateDelegate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_CreateDelegate_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_CreateDelegate_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_CreateDelegate_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_CreateDelegate__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_CreateDelegate_ref_ref_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_CreateDelegate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_CreateDelegate__ref_ref, .-m_Skymu_Skype7_Main_CreateDelegate__ref_ref

.globl m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b5
    cmp $1, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0112
    cmp $2, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011f
    cmp $3, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012c
    cmp $4, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0139
    cmp $5, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0146
    cmp $6, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016a
    cmp $7, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018e
    cmp $8, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b2
    cmp $9, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d6
    cmp $10, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fa
    cmp $11, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0207
    cmp $12, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0214
    cmp $13, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0221
    cmp $14, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022e
    cmp $15, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0252
    cmp $16, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_026a
    cmp $17, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0282
    cmp $18, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a6
    cmp $19, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ca
    cmp $20, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ee
    cmp $21, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fb
    cmp $22, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_031f
    cmp $23, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_032c
    cmp $24, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0339
    cmp $25, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0346
    cmp $26, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0353
    cmp $27, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0360
    cmp $28, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_036d
    cmp $29, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037a
    cmp $30, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0387
    cmp $31, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0394
    cmp $32, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a1
    cmp $33, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ae
    cmp $34, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d2
    cmp $35, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03df
    cmp $36, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ec
    cmp $37, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f9
    cmp $38, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041d
    cmp $39, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042a
    cmp $40, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0437
    cmp $41, %eax
    je .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_044f
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b0:
    jmp .Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0473
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b5:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b6:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bb:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bc:
    lea m_Skymu_Skype7_Main_Window_Activated__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c2:
    lea .LN_0_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c7:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_add_Activated__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cc:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cd:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d2:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d3:
    lea m_Skymu_Skype7_Main_Window_Closing__ref_ref(%rip), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d9:
    lea .LN_1_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_CancelEventHandler_ctor__ref_v
    mov %r12, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00de:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_add_Closing__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e3:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e4:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e9:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ea:
    lea m_Skymu_Skype7_Main_Window_Deactivated__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f0:
    lea .LN_2_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f5:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_add_Deactivated__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fa:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fb:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0100:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0101:
    lea m_Skymu_Skype7_Main_Main_SizeChanged__ref_ref(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0107:
    lea .LN_3_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_SizeChangedEventHandler_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010c:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_add_SizeChanged__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0111:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0112:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0113:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0114:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0119:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0120:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0121:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0126:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012e:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0133:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0138:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0139:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013b:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0140:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0145:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0146:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0147:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0148:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0152:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0153:
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0158:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0159:
    lea m_Skymu_Skype7_Main_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015f:
    lea .LN_10_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0164:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0169:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016c:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0171:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0176:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0177:
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017d:
    lea m_Skymu_Skype7_Main_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0183:
    lea .LN_13_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0188:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0190:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0195:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_019a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_019b:
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a0:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a1:
    lea m_Skymu_Skype7_Main_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a7:
    lea .LN_16_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ac:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b4:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01be:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01bf:
    mov -48(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c4:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c5:
    lea m_Skymu_Skype7_Main_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cb:
    lea .LN_19_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d0:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d8:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01dd:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_20_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e2:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e3:
    mov -48(%rbp), %rdi
    lea .LN_21_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e8:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e9:
    lea m_Skymu_Skype7_Main_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ef:
    lea .LN_22_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f4:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fa:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fb:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fc:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0201:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_23_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0206:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0207:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0208:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0209:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_24_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0213:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0214:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0215:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0216:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_25_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0220:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0221:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0222:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0223:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0228:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_26_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0230:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0235:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_27_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023b:
    mov -48(%rbp), %rdi
    lea .LN_28_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0240:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0241:
    lea m_Skymu_Skype7_Main_TextBoxSearch_TextChanged__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0247:
    lea .LN_29_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_TextChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_TextBoxBase_add_TextChanged__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0251:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0252:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0253:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0258:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0259:
    lea m_Skymu_Skype7_Main_TabHome_Click__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_025f:
    lea .LN_30_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0264:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0269:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_026a:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_026b:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0270:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0271:
    lea m_Skymu_Skype7_Main_AddContact_Click__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0277:
    lea .LN_31_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_027c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0281:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0282:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0283:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0284:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0289:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_32_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_028e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_028f:
    mov -48(%rbp), %rdi
    lea .LN_33_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0294:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0295:
    lea m_Skymu_Skype7_Main_TabContacts_Click__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_029b:
    lea .LN_34_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a0:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a8:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ad:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_35_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b2:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b3:
    mov -48(%rbp), %rdi
    lea .LN_36_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b8:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b9:
    lea m_Skymu_Skype7_Main_TabRecent_Click__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bf:
    lea .LN_37_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c4:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ca:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02cb:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02cc:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d1:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_38_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d6:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d7:
    mov -48(%rbp), %rdi
    lea .LN_39_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02dc:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02dd:
    lea m_Skymu_Skype7_Main_TabServers_Click__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e3:
    lea .LN_40_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e8:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ed:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ee:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ef:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f0:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f5:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_41_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fa:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fb:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fc:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fd:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0302:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_42_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0307:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0308:
    mov -48(%rbp), %rdi
    lea .LN_43_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_030d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_030e:
    lea m_Skymu_Skype7_Main_ConversationList_SelectionChanged__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0314:
    lea .LN_44_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_SelectionChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0319:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_add_SelectionChanged__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_031e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_031f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0320:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0321:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0326:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_45_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_032b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_032c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_032d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_032e:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0333:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_46_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0338:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0339:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_033a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_033b:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0340:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_47_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0345:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0346:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0347:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0348:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_034d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_48_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0352:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0353:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0354:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0355:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_035a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_49_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_035f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0360:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0361:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0362:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0367:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_50_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_036c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_036d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_036e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_036f:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0374:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_51_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0379:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037c:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0381:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_52_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0386:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0387:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0388:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0389:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_038e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_53_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0393:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0394:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0395:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0396:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_039b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_54_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a1:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a2:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a3:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_55_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ad:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ae:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03af:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03b0:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03b5:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_56_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ba:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03bb:
    mov -48(%rbp), %rdi
    lea .LN_57_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c0:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c1:
    lea m_Skymu_Skype7_Main_MessageScrollFeed_Loaded__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c7:
    lea .LN_58_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03cc:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_add_Loaded__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d4:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_59_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03de:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03df:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03e0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03e1:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03e6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_60_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03eb:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ec:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ed:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ee:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_61_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03fa:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03fb:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0400:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_62_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0405:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0406:
    mov -48(%rbp), %rdi
    lea .LN_63_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_040b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_040c:
    lea m_Skymu_Skype7_Main_EmojiButton_Click__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0412:
    lea .LN_64_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0417:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041f:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0424:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_65_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0429:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042c:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0431:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_66_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0436:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0437:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0438:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_043d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_043e:
    lea m_Skymu_Skype7_Main_SendButton_Click__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0444:
    lea .LN_67_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0449:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_044e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_044f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0450:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0451:
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0456:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_68_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_045b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_045c:
    mov -48(%rbp), %rdi
    lea .LN_69_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0461:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0462:
    lea m_Skymu_Skype7_Main_TextBoxMessage_KeyDown__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0468:
    lea .LN_70_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_046d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_KeyDown__ref
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0472:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0473:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0474:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0475:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_71_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_047a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_Skype7_Main_Skymu_ViewModels_IMainWindowHolder_Show__void
.type m_Skymu_Skype7_Main_Skymu_ViewModels_IMainWindowHolder_Show__void, @function
m_Skymu_Skype7_Main_Skymu_ViewModels_IMainWindowHolder_Show__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_Skymu_ViewModels_IMainWindowHolder_Show_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_Skymu_ViewModels_IMainWindowHolder_Show_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Skype7_Main_Skymu_ViewModels_IMainWindowHolder_Show_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_Skymu_ViewModels_IMainWindowHolder_Show_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_Skymu_ViewModels_IMainWindowHolder_Show__void, .-m_Skymu_Skype7_Main_Skymu_ViewModels_IMainWindowHolder_Show__void

.globl m_Skymu_Skype7_Main_ctor_b_11_0__ref_ref
.type m_Skymu_Skype7_Main_ctor_b_11_0__ref_ref, @function
m_Skymu_Skype7_Main_ctor_b_11_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_0016:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_ctor_b_11_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_001e:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_ctor_b_11_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype7_Main_ctor_b_11_0_d__gen
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_0__ref_ref, .-m_Skymu_Skype7_Main_ctor_b_11_0__ref_ref

.globl m_Skymu_Skype7_Main_ctor_b_11_8__ref_ref
.type m_Skymu_Skype7_Main_ctor_b_11_8__ref_ref, @function
m_Skymu_Skype7_Main_ctor_b_11_8__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_PropertyChangedEventArgs_get_PropertyName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_0006:
    lea .LS_0_m_Skymu_Skype7_Main_ctor_b_11_8_ref_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_000b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_0010:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_002a
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_0013:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_0018:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_0019:
    lea m_Skymu_Skype7_Main_ctor_b_11_9__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_001f:
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_8_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Func_1_int32_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_0024:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke_int32__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_0029:
    mov -40(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_8_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_8__ref_ref, .-m_Skymu_Skype7_Main_ctor_b_11_8__ref_ref

.globl m_Skymu_Skype7_Main_ctor_b_11_9__void
.type m_Skymu_Skype7_Main_ctor_b_11_9__void, @function
m_Skymu_Skype7_Main_ctor_b_11_9__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_9_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_9_void_0001:
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_9_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_9_void_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_ConnectionStatus__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_9_void_000b:
    mov -40(%rbp), %rdi
    call m_Skymu_ViewModels_MainViewModel_GetIntFromStatus__v
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_9_void_0010:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_9_void_0011:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_9_void_0012:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_9_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_9_void_0017:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_9_void_0018:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_9_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_9__void, .-m_Skymu_Skype7_Main_ctor_b_11_9__void

.globl m_Skymu_Skype7_Main_ctor_b_11_1__ref
.type m_Skymu_Skype7_Main_ctor_b_11_1__ref, @function
m_Skymu_Skype7_Main_ctor_b_11_1__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_0000:
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_1_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_0005:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_1_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_000d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_000e:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_ctor_b_11_1_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_0015:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_001a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_001b:
    lea m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_0021:
    lea .LN_3_m_Skymu_Skype7_Main_ctor_b_11_1_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Func_1_string_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_0026:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke_string__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_002b:
    mov -40(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_002c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_1_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_1__ref, .-m_Skymu_Skype7_Main_ctor_b_11_1__ref

.globl m_Skymu_Skype7_Main_ctor_b_11_2__ref_ref
.type m_Skymu_Skype7_Main_ctor_b_11_2__ref_ref, @function
m_Skymu_Skype7_Main_ctor_b_11_2__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_2_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_2_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_2_ref_ref_0006:
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_2_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Skype7_Login_ctor__b
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_2_ref_ref_000b:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Skype7_Main_ctor_b_11_2_ref_ref_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_2_ref_ref_0011:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_2_ref_ref_0012:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_2_ref_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_2_ref_ref_0018:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Skype7_Main_ctor_b_11_2_ref_ref_001d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_2_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_2__ref_ref, .-m_Skymu_Skype7_Main_ctor_b_11_2__ref_ref

.globl m_Skymu_Skype7_Main_ctor_b_11_3__ref_ref
.type m_Skymu_Skype7_Main_ctor_b_11_3__ref_ref, @function
m_Skymu_Skype7_Main_ctor_b_11_3__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_get_is_loading_conversation__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0020
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0008:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0009:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_3_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_000e:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0020
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0011:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_3_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0016:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0017:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_001b
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0019:
    mov -32(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_001a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_001b:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ScrollViewer_ScrollToEnd__void
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_0020:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_3_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_3__ref_ref, .-m_Skymu_Skype7_Main_ctor_b_11_3__ref_ref

.globl m_Skymu_Skype7_Main_ctor_b_11_4__ref_ref
.type m_Skymu_Skype7_Main_ctor_b_11_4__ref_ref, @function
m_Skymu_Skype7_Main_ctor_b_11_4__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_4_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_4_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_ctor_b_11_4_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_001e:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Main_ctor_b_11_4_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_0026:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Main_ctor_b_11_4_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_002b:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_002d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype7_Main_ctor_b_11_4_d__gen
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_4_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_4__ref_ref, .-m_Skymu_Skype7_Main_ctor_b_11_4__ref_ref

.globl m_Skymu_Skype7_Main_ctor_b_11_5__ref
.type m_Skymu_Skype7_Main_ctor_b_11_5__ref, @function
m_Skymu_Skype7_Main_ctor_b_11_5__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_0000:
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_5_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_0005:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_5_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_000d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_000e:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Main_ctor_b_11_5_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_0015:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_001a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_001b:
    lea m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_0021:
    lea .LN_3_m_Skymu_Skype7_Main_ctor_b_11_5_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_ImageSource_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_0026:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke_class_PresentationCore_System_Windows_Media_ImageSource__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_002b:
    mov -40(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_002c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_5_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_5__ref, .-m_Skymu_Skype7_Main_ctor_b_11_5__ref

.globl m_Skymu_Skype7_Main_ctor_b_11_6__ref_ref
.type m_Skymu_Skype7_Main_ctor_b_11_6__ref_ref, @function
m_Skymu_Skype7_Main_ctor_b_11_6__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_PropertyChangedEventArgs_get_PropertyName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0006:
    lea .LS_0_m_Skymu_Skype7_Main_ctor_b_11_6_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_000b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0010:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_002b
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0013:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0018:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0019:
    lea m_Skymu_Skype7_Main_ctor_b_11_12__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_001f:
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_6_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Func_1_string_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0024:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke_string__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0029:
    mov -40(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_002b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_002c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_PropertyChangedEventArgs_get_PropertyName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0031:
    lea .LS_2_m_Skymu_Skype7_Main_ctor_b_11_6_ref_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0036:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_003b:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0055
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_003d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_003e:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0043:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0044:
    lea m_Skymu_Skype7_Main_ctor_b_11_13__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_004a:
    lea .LN_3_m_Skymu_Skype7_Main_ctor_b_11_6_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Visibility_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_004f:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke_valuetype_PresentationCore_System_Windows_Visibility__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0054:
    mov -40(%rbp), %rax
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_0055:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_6_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_6__ref_ref, .-m_Skymu_Skype7_Main_ctor_b_11_6__ref_ref

.globl m_Skymu_Skype7_Main_ctor_b_11_12__void
.type m_Skymu_Skype7_Main_ctor_b_11_12__void, @function
m_Skymu_Skype7_Main_ctor_b_11_12__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_12_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_12_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_12_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_12_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_12_void_0007:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_12_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_12_void_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_TypingText__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_12_void_0011:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_12_void_0012:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_12_void_0013:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Main_ctor_b_11_12_void_0018:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_12_void_0019:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_12_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_12__void, .-m_Skymu_Skype7_Main_ctor_b_11_12__void

.globl m_Skymu_Skype7_Main_ctor_b_11_13__void
.type m_Skymu_Skype7_Main_ctor_b_11_13__void, @function
m_Skymu_Skype7_Main_ctor_b_11_13__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Main_ctor_b_11_13_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0007:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Main_ctor_b_11_13_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_IsTypingVisible__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0011:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0016
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0013:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0014:
    jmp .Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0017
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0016:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0017:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0018:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_0019:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_001e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_001f:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_13_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_13__void, .-m_Skymu_Skype7_Main_ctor_b_11_13__void

.globl m_Skymu_Skype7_Main_ctor_b_11_14__ref_v
.type m_Skymu_Skype7_Main_ctor_b_11_14__ref_v, @function
m_Skymu_Skype7_Main_ctor_b_11_14__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0000:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0001:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0042
    cmp $1, %eax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_001f
    cmp $2, %eax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0028
    cmp $3, %eax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0031
    cmp $4, %eax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0042
    cmp $5, %eax
    je .Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_003a
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_001e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_001f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0020:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0021:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0022:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_TabContacts_Click__ref_ref
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0027:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0028:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0029:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_002a:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_002b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_TabServers_Click__ref_ref
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0030:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0031:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0032:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0033:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0034:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_TabRecent_Click__ref_ref
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0039:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_003a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_003b:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_003c:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_003d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Main_AddContact_Click__ref_ref
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_0042:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Main_ctor_b_11_14_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Main_ctor_b_11_14__ref_v, .-m_Skymu_Skype7_Main_ctor_b_11_14__ref_v

.globl m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate__void
.type m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate__void, @function
m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate__void, .-m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate__void

.globl m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate__ref
.type m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate__ref, @function
m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate__ref, .-m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate__ref

.globl m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate__void
.type m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate__void, @function
m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate__void, .-m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate__void

.globl m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate__ref
.type m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate__ref, @function
m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate__ref, .-m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate__ref

.globl m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate__void
.type m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate__void, @function
m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate__void, .-m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate__void

.globl m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate__ref
.type m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate__ref, @function
m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate__ref, .-m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate__ref

.globl m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate__void
.type m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate__void, @function
m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate__void, .-m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate__void

.globl m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate__ref
.type m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate__ref, @function
m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate__ref, .-m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate__ref

.globl m_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate__ref_ref
.type m_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate__ref_ref, @function
m_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0006:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_000f
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0008:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0009:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_000e:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_000f:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0010:
    mov -48(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0015:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_001e
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0018:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_001d:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_001e:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_001f:
    mov -56(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0024:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_002d
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0026:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0027:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_002c:
    mov -64(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_002d:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_002e:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0033:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_003c
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0035:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0036:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_003b:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_003c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_003d:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_003e:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_003f:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_DataTemplateSelector_SelectTemplate__ref_ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_0044:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate__ref_ref, .-m_Skymu_Skype7_Skype7SidebarTemplateSelector_SelectTemplate__ref_ref

.globl m_Skymu_Skype7_Skype7SidebarTemplateSelector_ctor__void
.type m_Skymu_Skype7_Skype7SidebarTemplateSelector_ctor__void, @function
m_Skymu_Skype7_Skype7SidebarTemplateSelector_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_DataTemplateSelector_ctor__void
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Skype7SidebarTemplateSelector_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Skype7SidebarTemplateSelector_ctor__void, .-m_Skymu_Skype7_Skype7SidebarTemplateSelector_ctor__void

    .globl m_Skymu_Skype7_Main_Main_SizeChanged__ref_ref
    .type m_Skymu_Skype7_Main_Main_SizeChanged__ref_ref, @function
m_Skymu_Skype7_Main_Main_SizeChanged__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Skype7_Main_Main_SizeChanged_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Skype7_Main_Main_SizeChanged__ref_ref, .-m_Skymu_Skype7_Main_Main_SizeChanged__ref_ref

    .globl m_Skymu_Skype7_Main_cctor__void
    .type m_Skymu_Skype7_Main_cctor__void, @function
m_Skymu_Skype7_Main_cctor__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Skype7_Main_cctor_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Skype7_Main_cctor__void, .-m_Skymu_Skype7_Main_cctor__void

    .globl m_Skymu_Skype7_Main_ctor_b_11_7__ref_ref
    .type m_Skymu_Skype7_Main_ctor_b_11_7__ref_ref, @function
m_Skymu_Skype7_Main_ctor_b_11_7__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Skype7_Main_ctor_b_11_7_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Skype7_Main_ctor_b_11_7__ref_ref, .-m_Skymu_Skype7_Main_ctor_b_11_7__ref_ref

    .globl m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_b_25_0__ref_ref
    .type m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_b_25_0__ref_ref, @function
m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_b_25_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_b_25_0_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_b_25_0__ref_ref, .-m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_b_25_0__ref_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "LabelUsername"

.LN_3_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "CurrentUser"

.LN_4_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "LabelStatus"

.LN_5_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "CurrentUser"

.LS_6_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .short 8482, 32, 45, 32

.LN_7_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "CurrentUser"

.LN_8_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "ConversationList"

.LN_9_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "vmodel"

.LN_10_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "ConversationList"

.LN_11_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "GlobalUserCount"

.LN_12_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "Empty"

.LN_13_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "CurrentUser"

.LN_14_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "System.Nullable`1<int32>"

.LN_15_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "UserPicture"

.LN_16_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "CurrentUser"

.LN_17_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "UserPicture"

.LN_18_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "AnonymousAvatar"

.LN_19_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "vmodel"

.LN_20_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "CurrentUser"

.LN_21_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "System.ComponentModel.PropertyChangedEventHandler"

.LN_22_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "vmodel"

.LN_23_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "UseSkypeHome"

.LN_24_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "browser"

.LN_25_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "CurrentUser"

.LN_26_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "vmodel"

.LN_27_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "ContactList"

.LN_28_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_29_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_30_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_31_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_32_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_33_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_34_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "browser"

.LN_35_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_36_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_37_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "Skymu.Forms.HomeUnavailable"

.LN_38_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "browser"

.LN_39_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_40_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_41_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "Skymu.Forms.HomeUnavailable"

.LS_42_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .short 84, 104, 101, 32, 83, 107, 121, 112, 101, 32, 55, 32, 116, 104, 101, 109, 101, 32, 105, 115, 32, 101, 120, 112, 105, 114, 101, 109, 101, 110, 116, 97, 108, 44, 32, 104, 97, 118, 105, 110, 103, 32, 98, 101, 101, 110, 32, 112, 97, 114, 116, 105, 97, 108, 108, 121, 32, 112, 111, 114, 116, 101, 100, 32, 102, 114, 111, 109, 32, 97, 110, 32, 111, 108, 100, 101, 114, 32, 112, 114, 111, 106, 101, 99, 116, 32, 40, 83, 101, 97, 110, 75, 121, 112, 101, 41, 32, 116, 104, 97, 116, 32, 119, 97, 115, 32, 100, 101, 118, 101, 108, 111, 112, 101, 100, 32, 98, 121, 32, 100, 105, 102, 102, 101, 114, 101, 110, 116, 32, 112, 101, 111, 112, 108, 101, 46, 10, 10, 84, 104, 105, 115, 32, 112, 111, 114, 116, 32, 104, 97, 115, 32, 110, 117, 109, 101, 114, 111, 117, 115, 32, 98, 117, 103, 115, 44, 32, 115, 116, 114, 117, 99, 116, 117, 114, 97, 108, 32, 105, 115, 115, 117, 101, 115, 44, 32, 100, 101, 115, 105, 103, 110, 32, 102, 108, 97, 119, 115, 44, 32, 97, 110, 100, 32, 100, 105, 102, 102, 101, 114, 101, 110, 99, 101, 115, 32, 119, 105, 116, 104, 32, 116, 104, 101, 32, 114, 101, 115, 116, 32, 111, 102, 32, 116, 104, 101, 32, 99, 111, 100, 101, 98, 97, 115, 101, 46, 10, 10, 73, 116, 32, 105, 115, 32, 104, 105, 103, 104, 108, 121, 32, 114, 101, 99, 111, 109, 109, 101, 110, 100, 101, 100, 32, 116, 111, 32, 117, 115, 101, 32, 116, 104, 101, 32, 111, 116, 104, 101, 114, 32, 116, 104, 101, 109, 101, 115, 32, 105, 110, 115, 116, 101, 97, 100, 46

.LN_43_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "Ready"

.LN_44_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "Empty"

.LN_45_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_46_m_Skymu_Skype7_Main_ctor_b_11_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_0_d_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "s"

.LN_3_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "ConversationList"

.LN_4_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "ConversationList"

.LN_5_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "ConversationList"

.LN_6_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "vmodel"

.LN_7_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "ContactList"

.LN_8_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "ConversationList"

.LN_9_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "ConversationList"

.LN_10_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "<>u__1"

.LN_12_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_13_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "<>u__1"

.LN_14_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "<>u__1"

.LN_15_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "<>1__state"

.LN_16_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "<>1__state"

.LN_17_m_Skymu_Skype7_Main_ctor_b_11_4_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_4_d_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_c_cctor_void:
    .asciz "Skymu.Skype7.Main/'<>c'"

.LN_1_m_Skymu_Skype7_Main_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_Skype7_Main_c_InitializeEmojiPicker_b_26_0_ref_ref:
    .asciz "System.Windows.Media.SolidColorBrush"

.LN_0_m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void:
    .asciz "<>4__this"

.LN_1_m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void:
    .asciz "GlobalUserCount"

.LN_2_m_Skymu_Skype7_Main_c_DisplayClass11_0_ctor_b_10_void:
    .asciz "text"

.LN_0_m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void:
    .asciz "<>4__this"

.LN_1_m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void:
    .asciz "WifiButton"

.LN_2_m_Skymu_Skype7_Main_c_DisplayClass11_1_ctor_b_11_void:
    .asciz "uri"

.LN_0_m_Skymu_Skype7_Main_c_DisplayClass11_2_ctor_b_15_ref_ref:
    .asciz "extra"

.LN_0_m_Skymu_Skype7_Main_c_DisplayClass27_0_EmojiBox_Click_b_0_gen:
    .asciz "filename"

.LN_0_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "selected_item"

.LN_3_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "ConversationList"

.LN_4_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "selected_item"

.LN_5_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "ConversationList"

.LN_6_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "vmodel"

.LN_7_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "selected_item"

.LN_8_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "<>t__builder"

.LN_11_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "<>u__1"

.LN_12_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "<>u__1"

.LN_13_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "<>1__state"

.LN_14_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "<>1__state"

.LN_15_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_HandleConversationSelection_d_13_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void:
    .asciz "<>u__1"

.LN_4_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void:
    .asciz "<>t__builder"

.LN_5_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void:
    .asciz "<>u__1"

.LN_6_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void:
    .asciz "<>1__state"

.LN_8_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_Skype7_Main_SendButton_Click_d_20_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_SendButton_Click_d_20_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "TextBoxMessage"

.LN_3_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "TextBoxMessage"

.LN_4_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "vmodel"

.LN_5_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "<>1__state"

.LN_6_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "<>t__builder"

.LN_8_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "<>1__state"

.LN_12_m_Skymu_Skype7_Main_SendMessage_d_16_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_SendMessage_d_16_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "_userScrolledUp"

.LN_3_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "RightColumn"

.LN_4_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "browser"

.LN_5_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_6_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "vmodel"

.LN_7_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "LabelUsername1"

.LN_8_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "LabelStatus1"

.LN_9_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "System.Nullable`1<int32>"

.LN_10_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "ChatHeaderAvatar"

.LN_11_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "ChatHeaderAvatar"

.LN_12_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "AnonymousAvatar"

.LN_13_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "GroupAvatar"

.LN_14_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "Spinner"

.LN_15_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "vmodel"

.LN_16_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "<>1__state"

.LN_17_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "<>u__1"

.LN_18_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "<>t__builder"

.LN_19_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "<>u__1"

.LN_20_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "<>u__1"

.LN_21_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "<>1__state"

.LN_22_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "vmodel"

.LN_23_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "_grouper"

.LN_24_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "vmodel"

.LN_25_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "ConversationItemsList"

.LN_26_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "_grouper"

.LN_27_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "Spinner"

.LN_28_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "_conversationScrollViewer"

.LN_29_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "<>1__state"

.LN_30_m_Skymu_Skype7_Main_SetConversation_d_15_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_SetConversation_d_15_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "sender"

.LN_3_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "_currentStatusIndex"

.LN_4_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<current>5__2"

.LS_5_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .short 100, 110, 100

.LN_6_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "vmodel"

.LN_7_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "vmodel"

.LN_8_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "_currentStatusIndex"

.LN_9_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "LabelStatus"

.LN_10_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "Plugin"

.LN_11_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<>1__state"

.LN_12_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<>u__1"

.LN_13_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<>t__builder"

.LN_14_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<>u__1"

.LN_15_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<>u__1"

.LN_16_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<>1__state"

.LN_17_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<current>5__2"

.LN_18_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "_currentStatusIndex"

.LN_19_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "LabelStatus"

.LN_20_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<>1__state"

.LN_21_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_StatusMenuItemClick_d_31_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "ConversationList"

.LN_3_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>7__wrap1"

.LN_4_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "vmodel"

.LN_5_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>1__state"

.LN_6_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>t__builder"

.LN_8_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>7__wrap1"

.LN_12_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>7__wrap1"

.LN_13_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>1__state"

.LN_14_m_Skymu_Skype7_Main_TabServers_Click_d_40_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_TabServers_Click_d_40_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "e"

.LN_3_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "System.Windows.Input.ModifierKeys"

.LN_4_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "System.Windows.Input.ModifierKeys"

.LN_5_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "e"

.LN_6_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "<>1__state"

.LN_7_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "<>t__builder"

.LN_9_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "<>u__1"

.LN_11_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "<>1__state"

.LN_12_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "<>1__state"

.LN_13_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_d_21_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void:
    .asciz "vmodel"

.LN_3_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void:
    .asciz "<>1__state"

.LN_4_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void:
    .asciz "<>t__builder"

.LN_6_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_Skype7_Main_WifiButton_Click_d_29_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_WifiButton_Click_d_29_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_get_is_loading_conversation_void:
    .asciz "vmodel"

.LN_0_m_Skymu_Skype7_Main_add_Ready_ref:
    .asciz "Ready"

.LN_1_m_Skymu_Skype7_Main_add_Ready_ref:
    .asciz "Ready"

.LN_0_m_Skymu_Skype7_Main_remove_Ready_ref:
    .asciz "Ready"

.LN_1_m_Skymu_Skype7_Main_remove_Ready_ref:
    .asciz "Ready"

.LD_0_m_Skymu_Skype7_Main_ctor_void:
    .double -141.5

.LN_1_m_Skymu_Skype7_Main_ctor_void:
    .asciz "waveLeft"

.LN_2_m_Skymu_Skype7_Main_ctor_void:
    .asciz "noCloseEvent"

.LN_3_m_Skymu_Skype7_Main_ctor_void:
    .asciz "Skymu.ViewModels.MainViewModel"

.LN_4_m_Skymu_Skype7_Main_ctor_void:
    .asciz "vmodel"

.LN_5_m_Skymu_Skype7_Main_ctor_void:
    .asciz "vmodel"

.LN_6_m_Skymu_Skype7_Main_ctor_void:
    .asciz "vmodel"

.LN_7_m_Skymu_Skype7_Main_ctor_void:
    .asciz "Skymu.Skype7.MessageGrouper"

.LN_8_m_Skymu_Skype7_Main_ctor_void:
    .asciz "_grouper"

.LN_9_m_Skymu_Skype7_Main_ctor_void:
    .asciz "vmodel"

.LN_10_m_Skymu_Skype7_Main_ctor_void:
    .asciz "System.EventHandler"

.LN_11_m_Skymu_Skype7_Main_ctor_void:
    .asciz "vmodel"

.LN_12_m_Skymu_Skype7_Main_ctor_void:
    .asciz "System.Action`1<string>"

.LN_13_m_Skymu_Skype7_Main_ctor_void:
    .asciz "vmodel"

.LN_14_m_Skymu_Skype7_Main_ctor_void:
    .asciz "Skymu.ViewModels.MainViewModel/SignOutRequestedEventArgs>"

.LN_15_m_Skymu_Skype7_Main_ctor_void:
    .asciz "vmodel"

.LN_16_m_Skymu_Skype7_Main_ctor_void:
    .asciz "System.EventHandler"

.LN_17_m_Skymu_Skype7_Main_ctor_void:
    .asciz "vmodel"

.LN_18_m_Skymu_Skype7_Main_ctor_void:
    .asciz "System.EventHandler"

.LN_19_m_Skymu_Skype7_Main_ctor_void:
    .asciz "vmodel"

.LN_20_m_Skymu_Skype7_Main_ctor_void:
    .asciz "System.Action`1<string>"

.LN_21_m_Skymu_Skype7_Main_ctor_void:
    .asciz "vmodel"

.LN_22_m_Skymu_Skype7_Main_ctor_void:
    .asciz "System.ComponentModel.PropertyChangedEventHandler"

.LN_23_m_Skymu_Skype7_Main_ctor_void:
    .asciz "vmodel"

.LN_24_m_Skymu_Skype7_Main_ctor_void:
    .asciz "System.EventHandler"

.LN_25_m_Skymu_Skype7_Main_ctor_void:
    .asciz "Plugin"

.LN_26_m_Skymu_Skype7_Main_ctor_void:
    .asciz "TabServersText"

.LN_0_m_Skymu_Skype7_Main_BeginLoading_void:
    .asciz "vmodel"

.LN_0_m_Skymu_Skype7_Main_HandleConversationSelection_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Main_HandleConversationSelection_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_HandleConversationSelection_ref:
    .asciz "selected_item"

.LN_3_m_Skymu_Skype7_Main_HandleConversationSelection_ref:
    .asciz "<>1__state"

.LN_4_m_Skymu_Skype7_Main_HandleConversationSelection_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_ClearConversation_void:
    .asciz "Plugin"

.LN_1_m_Skymu_Skype7_Main_ClearConversation_void:
    .asciz "ConversationItemsList"

.LN_2_m_Skymu_Skype7_Main_ClearConversation_void:
    .asciz "_grouper"

.LN_3_m_Skymu_Skype7_Main_ClearConversation_void:
    .asciz "vmodel"

.LN_0_m_Skymu_Skype7_Main_SetConversation_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Main_SetConversation_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_SetConversation_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype7_Main_SetConversation_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_Skype7_Main_SetConversation_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_SendMessage_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Main_SendMessage_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_SendMessage_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype7_Main_SendMessage_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_Skype7_Main_SendMessage_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_InitiateSignOut_ref:
    .asciz "vmodel"

.LN_0_m_Skymu_Skype7_Main_SendButton_Click_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Main_SendButton_Click_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_SendButton_Click_ref_ref:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype7_Main_SendButton_Click_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref:
    .asciz "e"

.LN_3_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref:
    .asciz "<>1__state"

.LN_4_m_Skymu_Skype7_Main_TextBoxMessage_KeyDown_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_Window_Activated_ref_ref:
    .asciz "vmodel"

.LN_1_m_Skymu_Skype7_Main_Window_Activated_ref_ref:
    .asciz "vmodel"

.LN_2_m_Skymu_Skype7_Main_Window_Activated_ref_ref:
    .asciz "IsWindowActive"

.LN_0_m_Skymu_Skype7_Main_Window_Deactivated_ref_ref:
    .asciz "vmodel"

.LN_1_m_Skymu_Skype7_Main_Window_Deactivated_ref_ref:
    .asciz "vmodel"

.LN_2_m_Skymu_Skype7_Main_Window_Deactivated_ref_ref:
    .asciz "IsWindowActive"

.LN_0_m_Skymu_Skype7_Main_Window_Closing_ref_ref:
    .asciz "noCloseEvent"

.LN_0_m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref:
    .asciz "_conversationScrollViewer"

.LN_1_m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref:
    .asciz "_conversationScrollViewer"

.LN_2_m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref:
    .asciz "_conversationScrollViewer"

.LN_3_m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_ref_ref:
    .asciz "System.Windows.Controls.ScrollChangedEventHandler"

.LN_0_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "vmodel"

.LN_1_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "Item1"

.LN_2_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "Item2"

.LN_3_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "System.Windows.Controls.Border"

.LD_4_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .double 28

.LD_5_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .double 28

.LD_6_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .double 1

.LN_7_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "System.Windows.Thickness"

.LN_8_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_9_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "<>9__26_0"

.LN_10_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "<>9"

.LN_11_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_12_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "<>9__26_0"

.LN_13_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "<>9__26_1"

.LN_14_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "<>9"

.LN_15_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_16_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "<>9__26_1"

.LN_17_m_Skymu_Skype7_Main_InitializeEmojiPicker_void:
    .asciz "EmojiWrapPanel"

.LN_0_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref:
    .asciz "Skymu.Skype7.Main/'<>c__DisplayClass27_0'"

.LN_1_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref:
    .asciz "EmojiFlyout"

.LN_2_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref:
    .asciz "filename"

.LN_3_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref:
    .asciz "Map"

.LN_4_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref:
    .asciz "bool>"

.LN_5_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref:
    .asciz "TextBoxMessage"

.LN_6_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref:
    .asciz "TextBoxMessage"

.LN_7_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref:
    .asciz "TextBoxMessage"

.LN_8_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref:
    .asciz "TextBoxMessage"

.LN_9_m_Skymu_Skype7_Main_EmojiBox_Click_ref_ref:
    .asciz "TextBoxMessage"

.LN_0_m_Skymu_Skype7_Main_EmojiButton_Click_ref_ref:
    .asciz "EmojiFlyout"

.LN_0_m_Skymu_Skype7_Main_WifiButton_Click_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Main_WifiButton_Click_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_WifiButton_Click_ref_ref:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype7_Main_WifiButton_Click_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref:
    .asciz "sender"

.LN_3_m_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref:
    .asciz "<>1__state"

.LN_4_m_Skymu_Skype7_Main_StatusMenuItemClick_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_get_ActiveTab_void:
    .asciz "ActiveTabProperty"

.LN_0_m_Skymu_Skype7_Main_set_ActiveTab_i4:
    .asciz "ActiveTabProperty"

.LN_1_m_Skymu_Skype7_Main_set_ActiveTab_i4:
    .asciz "System.Int32"

.LD_0_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .double -232

.LN_1_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "waveLeft"

.LD_2_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .double -141.5

.LN_3_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "waveLeft"

.LD_4_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .double -64

.LN_5_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "waveLeft"

.LD_6_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .double 0.0

.LN_7_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "waveLeft"

.LN_8_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "TabWave"

.LN_9_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "waveLeft"

.LD_10_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .double 185

.LD_11_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .double 0.0

.LD_12_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .double 0.0

.LN_13_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "System.Windows.Thickness"

.LN_14_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "RightColumn"

.LN_15_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "vmodel"

.LN_16_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "UseSkypeHome"

.LN_17_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "browser"

.LN_18_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "HomeUnavailableFrame"

.LN_19_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "RightColumn"

.LN_20_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "browser"

.LN_21_m_Skymu_Skype7_Main_SetActiveTab_i4:
    .asciz "HomeUnavailableFrame"

.LN_0_m_Skymu_Skype7_Main_TabContacts_Click_ref_ref:
    .asciz "ConversationList"

.LN_1_m_Skymu_Skype7_Main_TabContacts_Click_ref_ref:
    .asciz "vmodel"

.LN_2_m_Skymu_Skype7_Main_TabContacts_Click_ref_ref:
    .asciz "ContactList"

.LN_0_m_Skymu_Skype7_Main_TabRecent_Click_ref_ref:
    .asciz "ConversationList"

.LN_1_m_Skymu_Skype7_Main_TabRecent_Click_ref_ref:
    .asciz "vmodel"

.LN_2_m_Skymu_Skype7_Main_TabRecent_Click_ref_ref:
    .asciz "ConversationList"

.LN_0_m_Skymu_Skype7_Main_TabServers_Click_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Main_TabServers_Click_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_TabServers_Click_ref_ref:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype7_Main_TabServers_Click_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_AddContact_Click_ref_ref:
    .asciz "vmodel"

.LN_0_m_Skymu_Skype7_Main_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Skype7_Main_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Skype7_Main_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 116, 104, 101, 109, 101, 115, 47, 115, 107, 121, 112, 101, 55, 47, 109, 97, 105, 110, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Skype7_Main_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.EventHandler"

.LN_1_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.ComponentModel.CancelEventHandler"

.LN_2_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.EventHandler"

.LN_3_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.SizeChangedEventHandler"

.LN_4_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LeftColumnDefinition"

.LN_5_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LeftColumn"

.LN_6_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarGrid"

.LN_7_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UserHousing"

.LN_8_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "sm_online"

.LN_9_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "sm_online"

.LN_10_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_11_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "sm_away"

.LN_12_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "sm_away"

.LN_13_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_14_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "sm_dnd"

.LN_15_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "sm_dnd"

.LN_16_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_17_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "sm_invisible"

.LN_18_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "sm_invisible"

.LN_19_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_20_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "sm_offline"

.LN_21_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "sm_offline"

.LN_22_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_23_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UserPicture"

.LN_24_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LabelUsername"

.LN_25_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LabelStatus"

.LN_26_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GlobalUserCount"

.LN_27_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TextBoxSearch"

.LN_28_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TextBoxSearch"

.LN_29_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Controls.TextChangedEventHandler"

.LN_30_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_31_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_32_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TabContactsText"

.LN_33_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TabContactsText"

.LN_34_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_35_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TabRecentText"

.LN_36_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TabRecentText"

.LN_37_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_38_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TabServersText"

.LN_39_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TabServersText"

.LN_40_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_41_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TabWave"

.LN_42_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationList"

.LN_43_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationList"

.LN_44_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Controls.SelectionChangedEventHandler"

.LN_45_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "browser"

.LN_46_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HomeUnavailableFrame"

.LN_47_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "RightColumn"

.LN_48_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatHeaderAvatar"

.LN_49_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LabelUsername1"

.LN_50_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LabelStatus1"

.LN_51_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "WifiButton"

.LN_52_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "VideoCallButton"

.LN_53_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "VoiceCallButton"

.LN_54_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Spinner"

.LN_55_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ThrobberRotate"

.LN_56_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageScrollFeed"

.LN_57_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageScrollFeed"

.LN_58_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_59_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationItemsList"

.LN_60_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TypingIndicator"

.LN_61_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TypingIndicatorText"

.LN_62_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiButton"

.LN_63_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiButton"

.LN_64_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_65_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiFlyout"

.LN_66_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiWrapPanel"

.LN_67_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_68_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TextBoxMessage"

.LN_69_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TextBoxMessage"

.LN_70_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyEventHandler"

.LN_71_m_Skymu_Skype7_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_0_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_0_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_ctor_b_11_0_ref_ref:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype7_Main_ctor_b_11_0_ref_ref:
    .asciz "<>t__builder"

.LS_0_m_Skymu_Skype7_Main_ctor_b_11_8_ref_ref:
    .short 67, 111, 110, 110, 101, 99, 116, 105, 111, 110, 83, 116, 97, 116, 117, 115

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_8_ref_ref:
    .asciz "System.Func`1<int32>"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_9_void:
    .asciz "CurrentUser"

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_9_void:
    .asciz "_currentStatusIndex"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_1_ref:
    .asciz "Skymu.Skype7.Main/'<>c__DisplayClass11_0'"

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_1_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_ctor_b_11_1_ref:
    .asciz "text"

.LN_3_m_Skymu_Skype7_Main_ctor_b_11_1_ref:
    .asciz "System.Func`1<string>"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_2_ref_ref:
    .asciz "Skymu.Skype7.Login"

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_2_ref_ref:
    .asciz "noCloseEvent"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_3_ref_ref:
    .asciz "_userScrolledUp"

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_3_ref_ref:
    .asciz "_conversationScrollViewer"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_4_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_4_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_ctor_b_11_4_ref_ref:
    .asciz "s"

.LN_3_m_Skymu_Skype7_Main_ctor_b_11_4_ref_ref:
    .asciz "<>1__state"

.LN_4_m_Skymu_Skype7_Main_ctor_b_11_4_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_5_ref:
    .asciz "Skymu.Skype7.Main/'<>c__DisplayClass11_1'"

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_5_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Main_ctor_b_11_5_ref:
    .asciz "uri"

.LN_3_m_Skymu_Skype7_Main_ctor_b_11_5_ref:
    .asciz "System.Windows.Media.ImageSource>"

.LS_0_m_Skymu_Skype7_Main_ctor_b_11_6_ref_ref:
    .short 84, 121, 112, 105, 110, 103, 84, 101, 120, 116

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_6_ref_ref:
    .asciz "System.Func`1<string>"

.LS_2_m_Skymu_Skype7_Main_ctor_b_11_6_ref_ref:
    .short 73, 115, 84, 121, 112, 105, 110, 103, 86, 105, 115, 105, 98, 108, 101

.LN_3_m_Skymu_Skype7_Main_ctor_b_11_6_ref_ref:
    .asciz "System.Windows.Visibility>"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_12_void:
    .asciz "TypingIndicatorText"

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_12_void:
    .asciz "vmodel"

.LN_0_m_Skymu_Skype7_Main_ctor_b_11_13_void:
    .asciz "TypingIndicator"

.LN_1_m_Skymu_Skype7_Main_ctor_b_11_13_void:
    .asciz "vmodel"

.LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_DirectMessageTemplate_void:
    .asciz "<DirectMessageTemplate>k__BackingField"

.LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_DirectMessageTemplate_ref:
    .asciz "<DirectMessageTemplate>k__BackingField"

.LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_GroupTemplate_void:
    .asciz "<GroupTemplate>k__BackingField"

.LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_GroupTemplate_ref:
    .asciz "<GroupTemplate>k__BackingField"

.LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerTemplate_void:
    .asciz "<ServerTemplate>k__BackingField"

.LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerTemplate_ref:
    .asciz "<ServerTemplate>k__BackingField"

.LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_get_ServerChannelTemplate_void:
    .asciz "<ServerChannelTemplate>k__BackingField"

.LN_0_m_Skymu_Skype7_Skype7SidebarTemplateSelector_set_ServerChannelTemplate_ref:
    .asciz "<ServerChannelTemplate>k__BackingField"

.LSTUB_m_Skymu_Skype7_Main_Main_SizeChanged_ref_ref:
    .asciz "Skymu.Skype7.Main::Main_SizeChanged  [floating-point 'div']"

.LSTUB_m_Skymu_Skype7_Main_cctor_void:
    .asciz "Skymu.Skype7.Main::.cctor  [ldtoken (metadata token)]"

.LSTUB_m_Skymu_Skype7_Main_ctor_b_11_7_ref_ref:
    .asciz "Skymu.Skype7.Main::'<.ctor>b__11_7'  [floating-point 'blt']"

.LSTUB_m_Skymu_Skype7_Main_MessageScrollFeed_Loaded_b_25_0_ref_ref:
    .asciz "Skymu.Skype7.Main::'<MessageScrollFeed_Loaded>b__25_0'  [floating-point 'bne']"

    .section .note.GNU-stack,"",@progbits
