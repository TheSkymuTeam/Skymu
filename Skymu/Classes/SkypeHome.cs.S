# Classes/SkypeHome.cs
    .text

.globl m_Skymu_WebServices_Home_c_cctor__void
.type m_Skymu_WebServices_Home_c_cctor__void, @function
m_Skymu_WebServices_Home_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_WebServices_Home_c_cctor_void_0000:
    lea .LN_0_m_Skymu_WebServices_Home_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_Home_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_WebServices_Home_c_cctor_void_0005:
    lea .LN_1_m_Skymu_WebServices_Home_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_Home_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_c_cctor__void, .-m_Skymu_WebServices_Home_c_cctor__void

.globl m_Skymu_WebServices_Home_c_ctor__void
.type m_Skymu_WebServices_Home_c_ctor__void, @function
m_Skymu_WebServices_Home_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_Home_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_Home_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_Home_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_c_ctor__void, .-m_Skymu_WebServices_Home_c_ctor__void

.globl m_Skymu_WebServices_Home_c_GetLanguage_b_9_0__ref
.type m_Skymu_WebServices_Home_c_GetLanguage_b_9_0__ref, @function
m_Skymu_WebServices_Home_c_GetLanguage_b_9_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Globalization_CultureInfo_get_NativeName__void
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0006:
    call m_Skymu_Preferences_Settings_get_Language__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_000b:
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
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0010:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0035
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0012:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0013:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Globalization_CultureInfo_get_DisplayName__void
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0018:
    call m_Skymu_Preferences_Settings_get_Language__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_001d:
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
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0022:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0035
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0024:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0025:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Globalization_CultureInfo_get_EnglishName__void
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_002a:
    call m_Skymu_Preferences_Settings_get_Language__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_002f:
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
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0034:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0035:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_0036:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_c_GetLanguage_b_9_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_c_GetLanguage_b_9_0__ref, .-m_Skymu_WebServices_Home_c_GetLanguage_b_9_0__ref

.globl m_Skymu_WebServices_Home_c_DisplayClass6_0_ctor__void
.type m_Skymu_WebServices_Home_c_DisplayClass6_0_ctor__void, @function
m_Skymu_WebServices_Home_c_DisplayClass6_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_c_DisplayClass6_0_ctor__void, .-m_Skymu_WebServices_Home_c_DisplayClass6_0_ctor__void

.globl m_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0__void
.type m_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0__void, @function
m_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_000b:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_000c:
    jmp .Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0031
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_000e:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0010:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Current__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0015:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0016:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0017:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_001c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0021:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0022:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0027:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_002c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_WebServices_Home_InjectAvatar__ref_arr
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0031:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0033:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_MoveNext__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_0038:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_000e
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_003a:
    jmp .Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_004a
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_004a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0__void, .-m_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0__void

.globl m_Skymu_WebServices_Home_Generate_d_3_MoveNext__void
.type m_Skymu_WebServices_Home_Generate_d_3_MoveNext__void, @function
m_Skymu_WebServices_Home_Generate_d_3_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0001:
    mov -88(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0006:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0008:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00df
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_000d:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_000e:
    mov -88(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0013:
    mov $2, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0014:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0019:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_001a:
    mov -88(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_001f:
    lea .LN_3_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov -88(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0024:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0025:
    mov -88(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_002a:
    lea .LN_5_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov -88(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_002f:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0030:
    mov -88(%rbp), %rdi
    lea .LN_6_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0035:
    lea .LN_7_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov -88(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_003a:
    lea .LN_8_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_003f:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0040:
    mov -96(%rbp), %rdi
    lea .LN_9_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0045:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0046:
    mov -104(%rbp), %rdi
    lea .LN_10_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_004b:
    lea .LN_11_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_WebServices_SkypeExternalObject_ctor__ref_gen
    mov %r12, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0050:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_WebBrowser_set_ObjectForScripting__ref
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0055:
    lea .LN_12_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_005a:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_005b:
    lea m_Skymu_WebServices_Home_OnLoadCompleted__ref_ref(%rip), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0061:
    lea .LN_13_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Navigation_LoadCompletedEventHandler_ctor__ref_v
    mov %r12, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0066:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_WebBrowser_add_LoadCompleted__ref
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_006b:
    mov $26, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_006d:
    mov -88(%rbp), %rdi
    call m_System_Environment_GetFolderPath__v
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0072:
    lea .LS_14_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0077:
    lea .LS_15_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_007c:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref_ref
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0081:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0082:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0083:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0084:
    lea .LS_16_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0089:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_008e:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_17_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0093:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0094:
    mov -88(%rbp), %rdi
    lea .LN_18_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0099:
    mov -88(%rbp), %rdi
    call m_System_IO_File_Exists__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_009e:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_010c
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00a0:
    lea .LS_19_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00a5:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00a6:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_Skymu_Packaging_Package_Install__ref_ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00ab:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00b0:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00b2:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00b4:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00b9:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00fc
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00bb:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00bc:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00bd:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00be:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00bf:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_20_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00c4:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00c5:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00c7:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_21_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00cc:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00cd:
    mov -88(%rbp), %rdi
    lea .LN_22_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00d2:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00d4:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00d5:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_WebServices_Home_Generate_d_3__gen_gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00da:
    jmp .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0201
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00df:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00e0:
    mov -88(%rbp), %rdi
    lea .LN_23_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00e5:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00e7:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00e8:
    mov -88(%rbp), %rdi
    lea .LN_24_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00ed:
    mov -88(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00f3:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00f4:
    mov $-1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00f5:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00f6:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00f7:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_25_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00fc:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_00fe:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0103:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_010c
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0105:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0106:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0107:
    jmp .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01e6
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_010c:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_010d:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_010e:
    lea .LN_26_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0113:
    lea .LS_27_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    mov $36, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0118:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_RegistryKey_OpenSubKey__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_011d:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_011f:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0121:
    lea .LS_28_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0126:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_RegistryKey_GetValue__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_012b:
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0130:
    mov -96(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0132:
    mov -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0134:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_014c
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0136:
    mov -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0138:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0139:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_013a:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4_i4
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_013f:
    mov -96(%rbp), %rdi
    call m_System_Int32_Parse__ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0144:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0145:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    setl %al
    movzbl %al, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0147:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0148:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_014a:
    jmp .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_014d
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_014c:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_014d:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_014e:
    jmp .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0160
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0160:
    jmp .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0165
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0165:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0166:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01ad
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0168:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0169:
    lea .LS_29_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_016e:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_016f:
    mov -112(%rbp), %rdi
    lea .LN_30_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0174:
    mov $0, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0175:
    mov $1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0176:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4_i4
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_017b:
    lea .LS_31_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0180:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0181:
    mov -128(%rbp), %rdi
    lea .LN_32_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0186:
    mov $2, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0187:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -128(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_018c:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref_ref
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0191:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_33_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0196:
    lea .LN_34_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_019b:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_019c:
    mov -104(%rbp), %rdi
    lea .LN_35_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01a1:
    lea .LN_36_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref
    mov %r12, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01a6:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_WebBrowser_Navigate__ref
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01ab:
    jmp .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01c2
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01ad:
    lea .LN_37_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01b2:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01b3:
    mov -104(%rbp), %rdi
    lea .LN_38_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01b8:
    lea .LN_39_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref
    mov %r12, -104(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01bd:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_WebBrowser_Navigate__ref
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01c2:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01c3:
    mov -96(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01c4:
    jmp .Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01e6
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01e6:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01e7:
    mov $-2, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01e9:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_40_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01ee:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01ef:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01f0:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_41_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01f5:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01f6:
    mov -88(%rbp), %rdi
    lea .LN_42_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01fb:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_01fc:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetResult__gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_0201:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_Generate_d_3_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_Generate_d_3_MoveNext__void, .-m_Skymu_WebServices_Home_Generate_d_3_MoveNext__void

.globl m_Skymu_WebServices_Home_Generate_d_3_SetStateMachine__ref
.type m_Skymu_WebServices_Home_Generate_d_3_SetStateMachine__ref, @function
m_Skymu_WebServices_Home_Generate_d_3_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_Home_Generate_d_3_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_Generate_d_3_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_Generate_d_3_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_Generate_d_3_SetStateMachine__ref, .-m_Skymu_WebServices_Home_Generate_d_3_SetStateMachine__ref

.globl m_Skymu_WebServices_Home_Generate__ref_ref_gen
.type m_Skymu_WebServices_Home_Generate__ref_ref_gen, @function
m_Skymu_WebServices_Home_Generate__ref_ref_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_Home_Generate_ref_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_Home_Generate_ref_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_Home_Generate_ref_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_001e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_Home_Generate_ref_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0026:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0027:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_Home_Generate_ref_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_002c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_Home_Generate_ref_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_Skymu_WebServices_Home_Generate_d_3__gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_003a:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_003c:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_WebServices_Home_Generate_ref_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0041:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_0046:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_Generate_ref_ref_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_Generate__ref_ref_gen, .-m_Skymu_WebServices_Home_Generate__ref_ref_gen

.globl m_Skymu_WebServices_Home_InvokeEval__ref
.type m_Skymu_WebServices_Home_InvokeEval__ref, @function
m_Skymu_WebServices_Home_InvokeEval__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_Home_InvokeEval_ref_0000:
    lea .LN_0_m_Skymu_WebServices_Home_InvokeEval_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_InvokeEval_ref_0005:
    lea .LS_1_m_Skymu_WebServices_Home_InvokeEval_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InvokeEval_ref_000a:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_InvokeEval_ref_000b:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_InvokeEval_ref_0010:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_InvokeEval_ref_0011:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_InvokeEval_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_Home_InvokeEval_ref_0013:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_WebServices_Home_InvokeEval_ref_0014:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_WebBrowser_InvokeScript__ref_arr
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_InvokeEval_ref_0019:
    mov -40(%rbp), %rax
.Lm_Skymu_WebServices_Home_InvokeEval_ref_001a:
    jmp .Lm_Skymu_WebServices_Home_InvokeEval_ref_01e0
.Lm_Skymu_WebServices_Home_InvokeEval_ref_01e0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_InvokeEval_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_InvokeEval__ref, .-m_Skymu_WebServices_Home_InvokeEval__ref

.globl m_Skymu_WebServices_Home_OnLoadCompleted__ref_ref
.type m_Skymu_WebServices_Home_OnLoadCompleted__ref_ref, @function
m_Skymu_WebServices_Home_OnLoadCompleted__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0000:
    lea .LN_0_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0005:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0006:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_000b:
    lea .LN_1_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0010:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_WebBrowser_get_ObjectForScripting__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0015:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_001a:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_001b:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0020
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_001d:
    mov -40(%rbp), %rax
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_001e:
    jmp .Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0031
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0020:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_SkypeExternalObject_GetAPI__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0026:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_002b
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0028:
    mov -32(%rbp), %rax
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0029:
    jmp .Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0031
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_002b:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_002c:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_SkypeAPI_FireShowingChanged__b
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0031:
    lea .LN_2_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0036:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_WebBrowser_get_ObjectForScripting__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_003b:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0040:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0041:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0046
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0043:
    mov -40(%rbp), %rax
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0044:
    jmp .Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0057
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0046:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_SkypeExternalObject_GetAPI__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_004b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_004c:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0051
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_004e:
    mov -32(%rbp), %rax
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_004f:
    jmp .Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0057
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0051:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0052:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_SkypeAPI_FireLiveChanged__b
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0057:
    lea .LN_3_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_005c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0061:
    lea .LN_4_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0066:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_006b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_WebServices_Home_InjectAvatar__ref_arr
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0070:
    lea .LN_5_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0075:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_00a3
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0077:
    lea .LN_6_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_Home_c_DisplayClass6_0_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_007c:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_007d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_007e:
    lea .LN_7_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0083:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_8_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0088:
    lea .LN_9_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_008d:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0092:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0093:
    lea m_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_0099:
    lea .LN_10_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_009e:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke__ref
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_00a3:
    call m_Skymu_Preferences_Settings_get_EnableAdBlock__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_00a8:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_00af
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_00aa:
    call m_Skymu_WebServices_Home_InsertAdBlock__void
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_00af:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_OnLoadCompleted_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_OnLoadCompleted__ref_ref, .-m_Skymu_WebServices_Home_OnLoadCompleted__ref_ref

.globl m_Skymu_WebServices_Home_FireMoodUpdate__ref_ref_arr
.type m_Skymu_WebServices_Home_FireMoodUpdate__ref_ref_arr, @function
m_Skymu_WebServices_Home_FireMoodUpdate__ref_ref_arr:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0000:
    lea .LN_0_m_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0005:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_WebBrowser_get_ObjectForScripting__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_000a:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_000f:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0010:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0015
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0012:
    mov -40(%rbp), %rax
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0013:
    jmp .Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0027
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0015:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_SkypeExternalObject_GetAPI__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_001a:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_001b:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0020
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_001d:
    mov -32(%rbp), %rax
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_001e:
    jmp .Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0027
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0020:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0021:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0022:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_SkypeAPI_FireMoodUpdate__ref_ref
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0028:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_0029:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_WebServices_Home_InjectAvatar__ref_arr
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_002e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_FireMoodUpdate__ref_ref_arr, .-m_Skymu_WebServices_Home_FireMoodUpdate__ref_ref_arr

.globl m_Skymu_WebServices_Home_InjectAvatar__ref_arr
.type m_Skymu_WebServices_Home_InjectAvatar__ref_arr, @function
m_Skymu_WebServices_Home_InjectAvatar__ref_arr:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0000:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0001:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0004
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0003:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0004:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0005:
    mov -48(%rbp), %rdi
    call m_System_Convert_ToBase64String__arr
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_000a:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_000b:
    lea .LS_0_m_Skymu_WebServices_Home_InjectAvatar_ref_arr(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0010:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0011:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0016:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0017:
    mov $7, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0018:
    mov -48(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_001d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_001e:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_001f:
    lea .LS_1_m_Skymu_WebServices_Home_InjectAvatar_ref_arr(%rip), %rdi
    mov $153, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0024:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0025:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0026:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0027:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0028:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0029:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_002a:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_002b:
    lea .LS_2_m_Skymu_WebServices_Home_InjectAvatar_ref_arr(%rip), %rdi
    mov $33, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0030:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0031:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0032:
    mov $3, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0033:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0034:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0035:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0036:
    mov $4, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0037:
    lea .LS_3_m_Skymu_WebServices_Home_InjectAvatar_ref_arr(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_003c:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_003d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_003e:
    mov $5, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_003f:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0040:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0041:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0042:
    mov $6, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0043:
    lea .LS_4_m_Skymu_WebServices_Home_InjectAvatar_ref_arr(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0048:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0049:
    mov -40(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_004e:
    mov -48(%rbp), %rdi
    call m_Skymu_WebServices_Home_InvokeEval__ref
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_0053:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_InjectAvatar_ref_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_InjectAvatar__ref_arr, .-m_Skymu_WebServices_Home_InjectAvatar__ref_arr

.globl m_Skymu_WebServices_Home_GetLanguage__void
.type m_Skymu_WebServices_Home_GetLanguage__void, @function
m_Skymu_WebServices_Home_GetLanguage__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0000:
    call m_System_AppDomain_get_CurrentDomain__void
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0005:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_AppDomain_get_BaseDirectory__void
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_000a:
    lea .LS_0_m_Skymu_WebServices_Home_GetLanguage_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_000f:
    lea .LS_1_m_Skymu_WebServices_Home_GetLanguage_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0014:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref_ref
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0019:
    mov -88(%rbp), %rdi
    call m_System_IO_File_ReadAllText__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_001e:
    mov -88(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_001f:
    lea .LS_2_m_Skymu_WebServices_Home_GetLanguage_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0024:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0025:
    mov $7, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0026:
    mov -88(%rbp), %rdi
    call m_System_Globalization_CultureInfo_GetCultures__v
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_002b:
    lea .LN_3_m_Skymu_WebServices_Home_GetLanguage_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0030:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0031:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_GetLanguage_void_004a
.Lm_Skymu_WebServices_Home_GetLanguage_void_0033:
    mov -88(%rbp), %rax
.Lm_Skymu_WebServices_Home_GetLanguage_void_0034:
    lea .LN_4_m_Skymu_WebServices_Home_GetLanguage_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0039:
    lea m_Skymu_WebServices_Home_c_GetLanguage_b_9_0__ref(%rip), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_003f:
    lea .LN_5_m_Skymu_WebServices_Home_GetLanguage_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0044:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0045:
    lea .LN_6_m_Skymu_WebServices_Home_GetLanguage_void(%rip), %rdi
    call shim_global_slot
    mov -88(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_Home_GetLanguage_void_004a:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_System_Runtime_System_Globalization_CultureInfo__gen_gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_004f:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0050:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_GetLanguage_void_0056
.Lm_Skymu_WebServices_Home_GetLanguage_void_0052:
    mov -80(%rbp), %rax
.Lm_Skymu_WebServices_Home_GetLanguage_void_0053:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0054:
    jmp .Lm_Skymu_WebServices_Home_GetLanguage_void_005b
.Lm_Skymu_WebServices_Home_GetLanguage_void_0056:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Globalization_CultureInfo_get_Name__void
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_005b:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_005c:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_Home_GetLanguage_void_0064
.Lm_Skymu_WebServices_Home_GetLanguage_void_005e:
    mov -80(%rbp), %rax
.Lm_Skymu_WebServices_Home_GetLanguage_void_005f:
    lea .LS_7_m_Skymu_WebServices_Home_GetLanguage_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0064:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0065:
    jmp .Lm_Skymu_WebServices_Home_GetLanguage_void_006a
.Lm_Skymu_WebServices_Home_GetLanguage_void_006a:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_006b:
    mov $45, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_006d:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_006e:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__c_v
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0073:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0074:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0075:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0076:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0077:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0079:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_Home_GetLanguage_void_007f:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0081:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_Text_Json_JsonDocument_Parse__ref_v
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0086:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0087:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0088:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonDocument_get_RootElement__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_008d:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_008f:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0091:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0092:
    lea -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0094:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_0099:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_Home_GetLanguage_void_00a3
.Lm_Skymu_WebServices_Home_GetLanguage_void_009b:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_009d:
    lea .LN_8_m_Skymu_WebServices_Home_GetLanguage_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Text_Json_JsonElement_ctor__gen
    mov %r12, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00a2:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_GetLanguage_void_00a3:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00a4:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonDocument_get_RootElement__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00a9:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00ab:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00ad:
    lea .LS_9_m_Skymu_WebServices_Home_GetLanguage_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00b2:
    lea -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00b4:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00b9:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_Home_GetLanguage_void_00c3
.Lm_Skymu_WebServices_Home_GetLanguage_void_00bb:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00bd:
    lea .LN_10_m_Skymu_WebServices_Home_GetLanguage_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Text_Json_JsonElement_ctor__gen
    mov %r12, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00c2:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_GetLanguage_void_00c3:
    lea -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00c5:
    mov -88(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00cb:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_Home_GetLanguage_void_00cd:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_GetLanguage_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_GetLanguage__void, .-m_Skymu_WebServices_Home_GetLanguage__void

.globl m_Skymu_WebServices_Home_ctor__void
.type m_Skymu_WebServices_Home_ctor__void, @function
m_Skymu_WebServices_Home_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_Home_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_Home_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_Home_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_Home_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_Home_ctor__void, .-m_Skymu_WebServices_Home_ctor__void

.globl m_Skymu_WebServices_SkypeExternalObject_ctor__ref_gen
.type m_Skymu_WebServices_SkypeExternalObject_ctor__ref_gen, @function
m_Skymu_WebServices_SkypeExternalObject_ctor__ref_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeExternalObject_ctor__ref_gen, .-m_Skymu_WebServices_SkypeExternalObject_ctor__ref_gen

.globl m_Skymu_WebServices_SkypeExternalObject_getapi__i4
.type m_Skymu_WebServices_SkypeExternalObject_getapi__i4, @function
m_Skymu_WebServices_SkypeExternalObject_getapi__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_getapi_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_getapi_i4_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_getapi_i4_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeExternalObject_getapi_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_getapi_i4_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_getapi_i4_0008:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_SkypeExternalObject_getapi_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_getapi_i4_000d:
    lea .LN_2_m_Skymu_WebServices_SkypeExternalObject_getapi_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_WebServices_SkypeAPI_ctor__ref_gen
    mov %r12, -40(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_getapi_i4_0012:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_SkypeExternalObject_getapi_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeExternalObject_getapi_i4_0017:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_getapi_i4_0018:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_SkypeExternalObject_getapi_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_getapi_i4_001d:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeExternalObject_getapi_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeExternalObject_getapi__i4, .-m_Skymu_WebServices_SkypeExternalObject_getapi__i4

.globl m_Skymu_WebServices_SkypeExternalObject_GetAPI__void
.type m_Skymu_WebServices_SkypeExternalObject_GetAPI__void, @function
m_Skymu_WebServices_SkypeExternalObject_GetAPI__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_GetAPI_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_GetAPI_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeExternalObject_GetAPI_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeExternalObject_GetAPI_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeExternalObject_GetAPI_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeExternalObject_GetAPI__void, .-m_Skymu_WebServices_SkypeExternalObject_GetAPI__void

.globl m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext__void
.type m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext__void, @function
m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0008:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0015
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_000a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_000b:
    lea .LN_1_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0010:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0015:
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0016:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0017:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_005a
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0019:
    lea .LN_3_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_001e:
    lea .LS_4_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0023:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_GetStringAsync__ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0028:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_002d:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_002e:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0030:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0035:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0076
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0037:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0038:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0039:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_003a:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_003b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0040:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0041:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0042:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0047:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0048:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_004d:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_004f:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0050:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_string_valuetype_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d__gen_gen
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0055:
    jmp .Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00ff
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_005a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_005b:
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0060:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0061:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0062:
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0067:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_006d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_006e:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_006f:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0070:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0071:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0076:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0078:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_007d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_007e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_007f:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0084:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_0085:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_12_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_008a:
    jmp .Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_009f
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_009f:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00a4:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00a9:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00aa:
    mov -64(%rbp), %rdi
    lea .LN_13_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00af:
    lea m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1__void(%rip), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00b5:
    lea .LN_14_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00ba:
    call m_System_Array_Empty_object__void
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00bf:
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
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00c4:
    mov -56(%rbp), %rax
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00c5:
    jmp .Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00e5
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00e5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00e6:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00e8:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_15_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00ed:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00ee:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00ef:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_16_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00f4:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00f5:
    mov -56(%rbp), %rdi
    lea .LN_17_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00fa:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_00ff:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext__void, .-m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext__void

.globl m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine__ref
.type m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine__ref, @function
m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine__ref, .-m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine__ref

.globl m_Skymu_WebServices_SkypeAPI_c_cctor__void
.type m_Skymu_WebServices_SkypeAPI_c_cctor__void, @function
m_Skymu_WebServices_SkypeAPI_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_cctor_void_0000:
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_SkypeAPI_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_cctor_void_0005:
    lea .LN_1_m_Skymu_WebServices_SkypeAPI_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_c_cctor__void, .-m_Skymu_WebServices_SkypeAPI_c_cctor__void

.globl m_Skymu_WebServices_SkypeAPI_c_ctor__void
.type m_Skymu_WebServices_SkypeAPI_c_ctor__void, @function
m_Skymu_WebServices_SkypeAPI_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_SkypeAPI_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_c_ctor__void, .-m_Skymu_WebServices_SkypeAPI_c_ctor__void

.globl m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0__void
.type m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0__void, @function
m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_000e:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_0016:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_001b:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_001d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d__gen
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_0022:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_0024:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_0029:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_002e:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0__void, .-m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0__void

.globl m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_ctor__void
.type m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_ctor__void, @function
m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_ctor__void, .-m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_ctor__void

.globl m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1__void
.type m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1__void, @function
m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void_0000:
    lea .LS_0_m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void_0006:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void_000b:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void_000c:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Serialize_string__gen_ref
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void_0011:
    lea .LS_2_m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void_0016:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void_001b:
    mov -24(%rbp), %rdi
    call m_Skymu_WebServices_Home_InvokeEval__ref
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void_0020:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1__void, .-m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1__void

.globl m_Skymu_WebServices_SkypeAPI_ctor__ref_gen
.type m_Skymu_WebServices_SkypeAPI_ctor__ref_gen, @function
m_Skymu_WebServices_SkypeAPI_ctor__ref_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0001:
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_ClientObject_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0006:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_000b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_000c:
    lea .LN_2_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_string_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0011:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0016:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0017:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_001c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_001d:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_001e:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0023:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0024:
    lea .LN_5_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_LocalUserObject_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0029:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_002a:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_002b:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0030:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0035:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0036:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0037:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Status__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_003c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_003d:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0045
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_003f:
    mov -40(%rbp), %rax
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0040:
    lea .LN_7_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0045:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_8_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_004a:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_9_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_004f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0050:
    lea .LN_10_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_AccountObject_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0055:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0056:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0057:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_005c
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0059:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_005a:
    jmp .Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0062
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_005c:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_005d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Count__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0062:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_0067:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_12_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_006c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_ctor_ref_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_ctor__ref_gen, .-m_Skymu_WebServices_SkypeAPI_ctor__ref_gen

.globl m_Skymu_WebServices_SkypeAPI_getAccount__void
.type m_Skymu_WebServices_SkypeAPI_getAccount__void, @function
m_Skymu_WebServices_SkypeAPI_getAccount__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_getAccount_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_getAccount_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_getAccount_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_getAccount_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_getAccount_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_getAccount__void, .-m_Skymu_WebServices_SkypeAPI_getAccount__void

.globl m_Skymu_WebServices_SkypeAPI_getClient__void
.type m_Skymu_WebServices_SkypeAPI_getClient__void, @function
m_Skymu_WebServices_SkypeAPI_getClient__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_getClient_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_getClient_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_getClient_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_getClient_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_getClient_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_getClient__void, .-m_Skymu_WebServices_SkypeAPI_getClient__void

.globl m_Skymu_WebServices_SkypeAPI_getUser__ref
.type m_Skymu_WebServices_SkypeAPI_getUser__ref, @function
m_Skymu_WebServices_SkypeAPI_getUser__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_getUser_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_getUser_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_getUser_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_getUser_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_getUser_ref_0007:
    lea .LN_1_m_Skymu_WebServices_SkypeAPI_getUser_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_WebServices_SkypeUserObject_ctor__ref_gen
    mov %r12, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_getUser_ref_000c:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_getUser_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_getUser__ref, .-m_Skymu_WebServices_SkypeAPI_getUser__ref

.globl m_Skymu_WebServices_SkypeAPI_Users__i4
.type m_Skymu_WebServices_SkypeAPI_Users__i4, @function
m_Skymu_WebServices_SkypeAPI_Users__i4:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0000:
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_Users_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_UserEntry_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0005:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0006:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0007:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_SkypeAPI_Users_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_000c:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_SkypeAPI_Users_i4_0060
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_000f:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_SkypeAPI_Users_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0014:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0019:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_001a:
    jmp .Lm_Skymu_WebServices_SkypeAPI_Users_i4_0047
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_001c:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_001e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Current__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0023:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0024:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0025:
    lea .LN_3_m_Skymu_WebServices_SkypeAPI_Users_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_UserEntry_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_002a:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_002b:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_002c:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0031:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0036:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_SkypeAPI_Users_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_003b:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_003c:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_003d:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_SkypeAPI_Users_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0042:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_UserEntry_Add__gen
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0047:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0049:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_MoveNext__void
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_004e:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_SkypeAPI_Users_i4_001c
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0050:
    jmp .Lm_Skymu_WebServices_SkypeAPI_Users_i4_0060
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0060:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0061:
    lea .LN_6_m_Skymu_WebServices_SkypeAPI_Users_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_WebServices_UsersCollection_ctor__gen
    mov %r12, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_0066:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_Users_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_Users__i4, .-m_Skymu_WebServices_SkypeAPI_Users__i4

.globl m_Skymu_WebServices_SkypeAPI_isBuddy__ref
.type m_Skymu_WebServices_SkypeAPI_isBuddy__ref, @function
m_Skymu_WebServices_SkypeAPI_isBuddy__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_isBuddy_ref_0000:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_isBuddy_ref_0001:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_isBuddy_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_isBuddy__ref, .-m_Skymu_WebServices_SkypeAPI_isBuddy__ref

.globl m_Skymu_WebServices_SkypeAPI_encodeContent__ref
.type m_Skymu_WebServices_SkypeAPI_encodeContent__ref, @function
m_Skymu_WebServices_SkypeAPI_encodeContent__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_encodeContent_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_encodeContent_ref_0001:
    mov -32(%rbp), %rdi
    call m_System_Web_HttpUtility_HtmlEncode__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_encodeContent_ref_0006:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_encodeContent_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_encodeContent__ref, .-m_Skymu_WebServices_SkypeAPI_encodeContent__ref

.globl m_Skymu_WebServices_SkypeAPI_escapeXML__ref
.type m_Skymu_WebServices_SkypeAPI_escapeXML__ref, @function
m_Skymu_WebServices_SkypeAPI_escapeXML__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_escapeXML_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_escapeXML_ref_0001:
    mov -32(%rbp), %rdi
    call m_System_Security_SecurityElement_Escape__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_escapeXML_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_escapeXML_ref_0007:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_SkypeAPI_escapeXML_ref_000b
.Lm_Skymu_WebServices_SkypeAPI_escapeXML_ref_0009:
    mov -24(%rbp), %rax
.Lm_Skymu_WebServices_SkypeAPI_escapeXML_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_escapeXML_ref_000b:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_escapeXML_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_escapeXML__ref, .-m_Skymu_WebServices_SkypeAPI_escapeXML__ref

.globl m_Skymu_WebServices_SkypeAPI_fetchLocal__ref
.type m_Skymu_WebServices_SkypeAPI_fetchLocal__ref, @function
m_Skymu_WebServices_SkypeAPI_fetchLocal__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_fetchLocal_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_0007:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_0009:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_TryGetValue__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_000e:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_0016
.Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_0010:
    lea .LS_1_m_Skymu_WebServices_SkypeAPI_fetchLocal_ref(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_0015:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_0016:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_0017:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_fetchLocal_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_fetchLocal__ref, .-m_Skymu_WebServices_SkypeAPI_fetchLocal__ref

.globl m_Skymu_WebServices_SkypeAPI_storeLocal__ref_ref
.type m_Skymu_WebServices_SkypeAPI_storeLocal__ref_ref, @function
m_Skymu_WebServices_SkypeAPI_storeLocal__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_storeLocal_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_storeLocal_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_storeLocal_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_storeLocal_ref_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_storeLocal_ref_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_storeLocal_ref_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_set_Item__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_storeLocal_ref_ref_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_storeLocal_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_storeLocal__ref_ref, .-m_Skymu_WebServices_SkypeAPI_storeLocal__ref_ref

.globl m_Skymu_WebServices_SkypeAPI_libprop__i4
.type m_Skymu_WebServices_SkypeAPI_libprop__i4, @function
m_Skymu_WebServices_SkypeAPI_libprop__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_libprop_i4_0000:
    lea .LS_0_m_Skymu_WebServices_SkypeAPI_libprop_i4(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_libprop_i4_0005:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_libprop_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_libprop__i4, .-m_Skymu_WebServices_SkypeAPI_libprop__i4

.globl m_Skymu_WebServices_SkypeAPI_RecentAlerts__i4_i4
.type m_Skymu_WebServices_SkypeAPI_RecentAlerts__i4_i4, @function
m_Skymu_WebServices_SkypeAPI_RecentAlerts__i4_i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_RecentAlerts_i4_i4_0000:
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_RecentAlerts_i4_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_AlertObject_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_RecentAlerts_i4_i4_0005:
    lea .LN_1_m_Skymu_WebServices_SkypeAPI_RecentAlerts_i4_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_WebServices_AlertCollection_ctor__gen
    mov %r12, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_RecentAlerts_i4_i4_000a:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_RecentAlerts_i4_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_RecentAlerts__i4_i4, .-m_Skymu_WebServices_SkypeAPI_RecentAlerts__i4_i4

.globl m_Skymu_WebServices_SkypeAPI_setChannelNotification__i4
.type m_Skymu_WebServices_SkypeAPI_setChannelNotification__i4, @function
m_Skymu_WebServices_SkypeAPI_setChannelNotification__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setChannelNotification_i4_0000:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_setChannelNotification_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_setChannelNotification__i4, .-m_Skymu_WebServices_SkypeAPI_setChannelNotification__i4

.globl m_Skymu_WebServices_SkypeAPI_setAvatarListener__ref
.type m_Skymu_WebServices_SkypeAPI_setAvatarListener__ref, @function
m_Skymu_WebServices_SkypeAPI_setAvatarListener__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setAvatarListener_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setAvatarListener_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setAvatarListener_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_setAvatarListener_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_setAvatarListener_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_setAvatarListener_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_setAvatarListener__ref, .-m_Skymu_WebServices_SkypeAPI_setAvatarListener__ref

.globl m_Skymu_WebServices_SkypeAPI_setShowingListener__ref
.type m_Skymu_WebServices_SkypeAPI_setShowingListener__ref, @function
m_Skymu_WebServices_SkypeAPI_setShowingListener__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setShowingListener_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setShowingListener_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setShowingListener_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_setShowingListener_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_setShowingListener_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_setShowingListener_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_setShowingListener__ref, .-m_Skymu_WebServices_SkypeAPI_setShowingListener__ref

.globl m_Skymu_WebServices_SkypeAPI_setLiveListener__ref
.type m_Skymu_WebServices_SkypeAPI_setLiveListener__ref, @function
m_Skymu_WebServices_SkypeAPI_setLiveListener__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setLiveListener_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setLiveListener_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setLiveListener_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_setLiveListener_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_setLiveListener_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_setLiveListener_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_setLiveListener__ref, .-m_Skymu_WebServices_SkypeAPI_setLiveListener__ref

.globl m_Skymu_WebServices_SkypeAPI_setLanguageChangeListener__ref
.type m_Skymu_WebServices_SkypeAPI_setLanguageChangeListener__ref, @function
m_Skymu_WebServices_SkypeAPI_setLanguageChangeListener__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setLanguageChangeListener_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setLanguageChangeListener_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setLanguageChangeListener_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_setLanguageChangeListener_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_setLanguageChangeListener_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_setLanguageChangeListener_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_setLanguageChangeListener__ref, .-m_Skymu_WebServices_SkypeAPI_setLanguageChangeListener__ref

.globl m_Skymu_WebServices_SkypeAPI_setMoodListener__ref
.type m_Skymu_WebServices_SkypeAPI_setMoodListener__ref, @function
m_Skymu_WebServices_SkypeAPI_setMoodListener__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setMoodListener_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setMoodListener_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setMoodListener_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_setMoodListener_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_setMoodListener_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_setMoodListener_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_setMoodListener__ref, .-m_Skymu_WebServices_SkypeAPI_setMoodListener__ref

.globl m_Skymu_WebServices_SkypeAPI_setAlertListener__ref
.type m_Skymu_WebServices_SkypeAPI_setAlertListener__ref, @function
m_Skymu_WebServices_SkypeAPI_setAlertListener__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setAlertListener_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setAlertListener_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_setAlertListener_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_setAlertListener_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_setAlertListener_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_setAlertListener_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_setAlertListener__ref, .-m_Skymu_WebServices_SkypeAPI_setAlertListener__ref

.globl m_Skymu_WebServices_SkypeAPI_FetchAdListAsync__void
.type m_Skymu_WebServices_SkypeAPI_FetchAdListAsync__void, @function
m_Skymu_WebServices_SkypeAPI_FetchAdListAsync__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_0000:
    lea .LN_0_m_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_0005:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_001f
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_0008:
    mov -16(%rbp), %rax
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_0009:
    lea .LN_1_m_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_000e:
    lea m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0__void(%rip), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_0014:
    lea .LN_2_m_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Tasks_Task_ctor__ref_v
    mov %r12, -24(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_0019:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_001a:
    lea .LN_3_m_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void(%rip), %rdi
    call shim_global_slot
    mov -24(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_001f:
    mov -16(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Run__gen
    mov %rax, -16(%rbp)
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_0024:
    mov -24(%rbp), %rax
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_0025:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeAPI_FetchAdListAsync__void, .-m_Skymu_WebServices_SkypeAPI_FetchAdListAsync__void

.globl m_Skymu_WebServices_UsersCollection_get_Count__void
.type m_Skymu_WebServices_UsersCollection_get_Count__void, @function
m_Skymu_WebServices_UsersCollection_get_Count__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UsersCollection_get_Count_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UsersCollection_get_Count_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UsersCollection_get_Count_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UsersCollection_get_Count_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_UserEntry_get_Count__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UsersCollection_get_Count_void_000b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UsersCollection_get_Count_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UsersCollection_get_Count__void, .-m_Skymu_WebServices_UsersCollection_get_Count__void

.globl m_Skymu_WebServices_UsersCollection_ctor__gen
.type m_Skymu_WebServices_UsersCollection_ctor__gen, @function
m_Skymu_WebServices_UsersCollection_ctor__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_UsersCollection_ctor_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UsersCollection_ctor_gen_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_UsersCollection_ctor_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UsersCollection_ctor_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UsersCollection_ctor_gen_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UsersCollection_ctor_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UsersCollection_ctor_gen_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UsersCollection_ctor_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UsersCollection_ctor__gen, .-m_Skymu_WebServices_UsersCollection_ctor__gen

.globl m_Skymu_WebServices_UsersCollection_Call__i4
.type m_Skymu_WebServices_UsersCollection_Call__i4, @function
m_Skymu_WebServices_UsersCollection_Call__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_UsersCollection_Call_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UsersCollection_Call_i4_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UsersCollection_Call_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UsersCollection_Call_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UsersCollection_Call_i4_0007:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UsersCollection_Call_i4_0008:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UsersCollection_Call_i4_0009:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_UserEntry_get_Item__i4
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UsersCollection_Call_i4_000e:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UsersCollection_Call_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UsersCollection_Call__i4, .-m_Skymu_WebServices_UsersCollection_Call__i4

.globl m_Skymu_WebServices_UserEntry_ctor__void
.type m_Skymu_WebServices_UserEntry_ctor__void, @function
m_Skymu_WebServices_UserEntry_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserEntry_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserEntry_ctor_void_0001:
    lea .LN_0_m_Skymu_WebServices_UserEntry_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserEntry_ctor_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_UserEntry_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserEntry_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserEntry_ctor_void_000c:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_UserEntry_ctor_void_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserEntry_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserEntry_ctor__void, .-m_Skymu_WebServices_UserEntry_ctor__void

.globl m_Skymu_WebServices_LocalUserObject_hasCapability__i4
.type m_Skymu_WebServices_LocalUserObject_hasCapability__i4, @function
m_Skymu_WebServices_LocalUserObject_hasCapability__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_LocalUserObject_hasCapability_i4_0000:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_LocalUserObject_hasCapability_i4_0001:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_LocalUserObject_hasCapability_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_LocalUserObject_hasCapability__i4, .-m_Skymu_WebServices_LocalUserObject_hasCapability__i4

.globl m_Skymu_WebServices_LocalUserObject_ctor__void
.type m_Skymu_WebServices_LocalUserObject_ctor__void, @function
m_Skymu_WebServices_LocalUserObject_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_0001:
    lea .LN_0_m_Skymu_WebServices_LocalUserObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_LocalUserObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_000c:
    lea .LN_2_m_Skymu_WebServices_LocalUserObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_0011:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_LocalUserObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_0017:
    lea .LN_4_m_Skymu_WebServices_LocalUserObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_001c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_LocalUserObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_0021:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_0022:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_0027:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_LocalUserObject_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_LocalUserObject_ctor__void, .-m_Skymu_WebServices_LocalUserObject_ctor__void

.globl m_Skymu_WebServices_AccountObject_ctor__void
.type m_Skymu_WebServices_AccountObject_ctor__void, @function
m_Skymu_WebServices_AccountObject_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0001:
    lea .LN_0_m_Skymu_WebServices_AccountObject_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_SubscriptionsObject_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0006:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_AccountObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AccountObject_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_000c:
    lea .LN_2_m_Skymu_WebServices_AccountObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0011:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_AccountObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0017:
    call m_System_DateTimeOffset_get_UtcNow__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_001c:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_001d:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_001f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_ToUnixTimeSeconds__void
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0024:
    mov $60, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0026:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0027:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cqo
    idiv %rcx
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0028:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_AccountObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AccountObject_ctor_void_002d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_002e:
    lea .LN_5_m_Skymu_WebServices_AccountObject_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_PartnerCollection_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0033:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_6_m_Skymu_WebServices_AccountObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0038:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0039:
    lea .LN_7_m_Skymu_WebServices_AccountObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_003e:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_8_m_Skymu_WebServices_AccountObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0043:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0044:
    lea .LN_9_m_Skymu_WebServices_AccountObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_0049:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_10_m_Skymu_WebServices_AccountObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AccountObject_ctor_void_004e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AccountObject_ctor_void_004f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_AccountObject_ctor_void_0054:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AccountObject_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AccountObject_ctor__void, .-m_Skymu_WebServices_AccountObject_ctor__void

.globl m_Skymu_WebServices_SubscriptionsObject_Call__i4
.type m_Skymu_WebServices_SubscriptionsObject_Call__i4, @function
m_Skymu_WebServices_SubscriptionsObject_Call__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SubscriptionsObject_Call_i4_0000:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SubscriptionsObject_Call_i4_0001:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SubscriptionsObject_Call_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SubscriptionsObject_Call__i4, .-m_Skymu_WebServices_SubscriptionsObject_Call__i4

.globl m_Skymu_WebServices_SubscriptionsObject_ctor__void
.type m_Skymu_WebServices_SubscriptionsObject_ctor__void, @function
m_Skymu_WebServices_SubscriptionsObject_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SubscriptionsObject_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SubscriptionsObject_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_SubscriptionsObject_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SubscriptionsObject_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SubscriptionsObject_ctor__void, .-m_Skymu_WebServices_SubscriptionsObject_ctor__void

.globl m_Skymu_WebServices_PartnerCollection_get_Count__void
.type m_Skymu_WebServices_PartnerCollection_get_Count__void, @function
m_Skymu_WebServices_PartnerCollection_get_Count__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_get_Count_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_get_Count_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_PartnerCollection_get_Count_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_get_Count_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_PartnerObject_get_Count__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_get_Count_void_000b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_PartnerCollection_get_Count_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_PartnerCollection_get_Count__void, .-m_Skymu_WebServices_PartnerCollection_get_Count__void

.globl m_Skymu_WebServices_PartnerCollection_Call__i4
.type m_Skymu_WebServices_PartnerCollection_Call__i4, @function
m_Skymu_WebServices_PartnerCollection_Call__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_Call_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_Call_i4_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_PartnerCollection_Call_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_Call_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_Call_i4_0007:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_Call_i4_0008:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_Call_i4_0009:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_PartnerObject_get_Item__i4
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_Call_i4_000e:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_PartnerCollection_Call_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_PartnerCollection_Call__i4, .-m_Skymu_WebServices_PartnerCollection_Call__i4

.globl m_Skymu_WebServices_PartnerCollection_ctor__void
.type m_Skymu_WebServices_PartnerCollection_ctor__void, @function
m_Skymu_WebServices_PartnerCollection_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_ctor_void_0001:
    lea .LN_0_m_Skymu_WebServices_PartnerCollection_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_PartnerObject_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_ctor_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_PartnerCollection_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_PartnerCollection_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_PartnerCollection_ctor_void_000c:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_PartnerCollection_ctor_void_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_PartnerCollection_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_PartnerCollection_ctor__void, .-m_Skymu_WebServices_PartnerCollection_ctor__void

.globl m_Skymu_WebServices_AlertCollection_get_Count__void
.type m_Skymu_WebServices_AlertCollection_get_Count__void, @function
m_Skymu_WebServices_AlertCollection_get_Count__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_AlertCollection_get_Count_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertCollection_get_Count_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_AlertCollection_get_Count_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertCollection_get_Count_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_AlertObject_get_Count__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertCollection_get_Count_void_000b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AlertCollection_get_Count_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AlertCollection_get_Count__void, .-m_Skymu_WebServices_AlertCollection_get_Count__void

.globl m_Skymu_WebServices_AlertCollection_ctor__gen
.type m_Skymu_WebServices_AlertCollection_ctor__gen, @function
m_Skymu_WebServices_AlertCollection_ctor__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_AlertCollection_ctor_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertCollection_ctor_gen_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_AlertCollection_ctor_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertCollection_ctor_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AlertCollection_ctor_gen_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_AlertCollection_ctor_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AlertCollection_ctor_gen_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AlertCollection_ctor_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AlertCollection_ctor__gen, .-m_Skymu_WebServices_AlertCollection_ctor__gen

.globl m_Skymu_WebServices_AlertCollection_Call__i4
.type m_Skymu_WebServices_AlertCollection_Call__i4, @function
m_Skymu_WebServices_AlertCollection_Call__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_AlertCollection_Call_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertCollection_Call_i4_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_AlertCollection_Call_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertCollection_Call_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AlertCollection_Call_i4_0007:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_AlertCollection_Call_i4_0008:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AlertCollection_Call_i4_0009:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_AlertObject_get_Item__i4
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertCollection_Call_i4_000e:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AlertCollection_Call_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AlertCollection_Call__i4, .-m_Skymu_WebServices_AlertCollection_Call__i4

.globl m_Skymu_WebServices_PartnerObject_getName__void
.type m_Skymu_WebServices_PartnerObject_getName__void, @function
m_Skymu_WebServices_PartnerObject_getName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_PartnerObject_getName_void_0000:
    lea .LN_0_m_Skymu_WebServices_PartnerObject_getName_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_PartnerObject_getName_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_PartnerObject_getName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_PartnerObject_getName__void, .-m_Skymu_WebServices_PartnerObject_getName__void

.globl m_Skymu_WebServices_PartnerObject_getId__void
.type m_Skymu_WebServices_PartnerObject_getId__void, @function
m_Skymu_WebServices_PartnerObject_getId__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_PartnerObject_getId_void_0000:
    lea .LN_0_m_Skymu_WebServices_PartnerObject_getId_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_PartnerObject_getId_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_PartnerObject_getId_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_PartnerObject_getId__void, .-m_Skymu_WebServices_PartnerObject_getId__void

.globl m_Skymu_WebServices_PartnerObject_canOptout__void
.type m_Skymu_WebServices_PartnerObject_canOptout__void, @function
m_Skymu_WebServices_PartnerObject_canOptout__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_PartnerObject_canOptout_void_0000:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_PartnerObject_canOptout_void_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_PartnerObject_canOptout_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_PartnerObject_canOptout__void, .-m_Skymu_WebServices_PartnerObject_canOptout__void

.globl m_Skymu_WebServices_PartnerObject_getOptoutStatus__void
.type m_Skymu_WebServices_PartnerObject_getOptoutStatus__void, @function
m_Skymu_WebServices_PartnerObject_getOptoutStatus__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_PartnerObject_getOptoutStatus_void_0000:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_PartnerObject_getOptoutStatus_void_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_PartnerObject_getOptoutStatus_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_PartnerObject_getOptoutStatus__void, .-m_Skymu_WebServices_PartnerObject_getOptoutStatus__void

.globl m_Skymu_WebServices_PartnerObject_setOptoutStatus__b
.type m_Skymu_WebServices_PartnerObject_setOptoutStatus__b, @function
m_Skymu_WebServices_PartnerObject_setOptoutStatus__b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_PartnerObject_setOptoutStatus_b_0000:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_PartnerObject_setOptoutStatus_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_PartnerObject_setOptoutStatus__b, .-m_Skymu_WebServices_PartnerObject_setOptoutStatus__b

.globl m_Skymu_WebServices_PartnerObject_ctor__void
.type m_Skymu_WebServices_PartnerObject_ctor__void, @function
m_Skymu_WebServices_PartnerObject_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_PartnerObject_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_PartnerObject_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_PartnerObject_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_PartnerObject_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_PartnerObject_ctor__void, .-m_Skymu_WebServices_PartnerObject_ctor__void

.globl m_Skymu_WebServices_AlertObject_getReadStatus__void
.type m_Skymu_WebServices_AlertObject_getReadStatus__void, @function
m_Skymu_WebServices_AlertObject_getReadStatus__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_AlertObject_getReadStatus_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_getReadStatus_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_AlertObject_getReadStatus_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_getReadStatus_void_0006:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertObject_getReadStatus_void_0007:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %rcx, %rax
    sete %al
    movzbl %al, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_getReadStatus_void_0009:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AlertObject_getReadStatus_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AlertObject_getReadStatus__void, .-m_Skymu_WebServices_AlertObject_getReadStatus__void

.globl m_Skymu_WebServices_AlertObject_setReadStatus__b
.type m_Skymu_WebServices_AlertObject_setReadStatus__b, @function
m_Skymu_WebServices_AlertObject_setReadStatus__b:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_setReadStatus_b_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertObject_setReadStatus_b_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AlertObject_setReadStatus_b_0002:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_AlertObject_setReadStatus_b_0003:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_AlertObject_setReadStatus_b_0005:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_AlertObject_setReadStatus_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AlertObject_setReadStatus_b_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AlertObject_setReadStatus_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AlertObject_setReadStatus__b, .-m_Skymu_WebServices_AlertObject_setReadStatus__b

.globl m_Skymu_WebServices_AlertObject_getName__void
.type m_Skymu_WebServices_AlertObject_getName__void, @function
m_Skymu_WebServices_AlertObject_getName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_AlertObject_getName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_getName_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_AlertObject_getName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_getName_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AlertObject_getName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AlertObject_getName__void, .-m_Skymu_WebServices_AlertObject_getName__void

.globl m_Skymu_WebServices_AlertObject_getPartnerId__void
.type m_Skymu_WebServices_AlertObject_getPartnerId__void, @function
m_Skymu_WebServices_AlertObject_getPartnerId__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_AlertObject_getPartnerId_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_getPartnerId_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_AlertObject_getPartnerId_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_getPartnerId_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AlertObject_getPartnerId_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AlertObject_getPartnerId__void, .-m_Skymu_WebServices_AlertObject_getPartnerId__void

.globl m_Skymu_WebServices_AlertObject_getAvatarURI__void
.type m_Skymu_WebServices_AlertObject_getAvatarURI__void, @function
m_Skymu_WebServices_AlertObject_getAvatarURI__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_AlertObject_getAvatarURI_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_getAvatarURI_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_AlertObject_getAvatarURI_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_getAvatarURI_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AlertObject_getAvatarURI_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AlertObject_getAvatarURI__void, .-m_Skymu_WebServices_AlertObject_getAvatarURI__void

.globl m_Skymu_WebServices_AlertObject_MarkSeen__void
.type m_Skymu_WebServices_AlertObject_MarkSeen__void, @function
m_Skymu_WebServices_AlertObject_MarkSeen__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_AlertObject_MarkSeen_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_MarkSeen_void_0001:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertObject_MarkSeen_void_0002:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_AlertObject_MarkSeen_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AlertObject_MarkSeen_void_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AlertObject_MarkSeen_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AlertObject_MarkSeen__void, .-m_Skymu_WebServices_AlertObject_MarkSeen__void

.globl m_Skymu_WebServices_AlertObject_Delete__void
.type m_Skymu_WebServices_AlertObject_Delete__void, @function
m_Skymu_WebServices_AlertObject_Delete__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_AlertObject_Delete_void_0000:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AlertObject_Delete_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AlertObject_Delete__void, .-m_Skymu_WebServices_AlertObject_Delete__void

.globl m_Skymu_WebServices_AlertObject_ctor__void
.type m_Skymu_WebServices_AlertObject_ctor__void, @function
m_Skymu_WebServices_AlertObject_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0001:
    lea .LN_0_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AlertObject_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_000c:
    lea .LN_2_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0011:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0017:
    lea .LN_4_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_001c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0021:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0022:
    lea .LN_6_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0027:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_7_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AlertObject_ctor_void_002c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_002d:
    lea .LN_8_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0032:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_9_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0037:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0038:
    lea .LN_10_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_003d:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_11_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0042:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0043:
    lea .LN_12_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_0048:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_13_m_Skymu_WebServices_AlertObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_AlertObject_ctor_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_AlertObject_ctor_void_004e:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_AlertObject_ctor_void_0053:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_AlertObject_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_AlertObject_ctor__void, .-m_Skymu_WebServices_AlertObject_ctor__void

.globl m_Skymu_WebServices_SkypeUserObject_ctor__ref_gen
.type m_Skymu_WebServices_SkypeUserObject_ctor__ref_gen, @function
m_Skymu_WebServices_SkypeUserObject_ctor__ref_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ctor_ref_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ctor_ref_gen_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_SkypeUserObject_ctor_ref_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ctor_ref_gen_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ctor_ref_gen_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeUserObject_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeUserObject_ctor_ref_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ctor_ref_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ctor_ref_gen_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_SkypeUserObject_ctor_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_SkypeUserObject_ctor_ref_gen_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeUserObject_ctor_ref_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeUserObject_ctor__ref_gen, .-m_Skymu_WebServices_SkypeUserObject_ctor__ref_gen

.globl m_Skymu_WebServices_SkypeUserObject_get_FullName__void
.type m_Skymu_WebServices_SkypeUserObject_get_FullName__void, @function
m_Skymu_WebServices_SkypeUserObject_get_FullName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_get_FullName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_get_FullName_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName__void
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_get_FullName_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeUserObject_get_FullName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeUserObject_get_FullName__void, .-m_Skymu_WebServices_SkypeUserObject_get_FullName__void

.globl m_Skymu_WebServices_SkypeUserObject_get_DisplayName__void
.type m_Skymu_WebServices_SkypeUserObject_get_DisplayName__void, @function
m_Skymu_WebServices_SkypeUserObject_get_DisplayName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_get_DisplayName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_get_DisplayName_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName__void
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_get_DisplayName_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeUserObject_get_DisplayName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeUserObject_get_DisplayName__void, .-m_Skymu_WebServices_SkypeUserObject_get_DisplayName__void

.globl m_Skymu_WebServices_SkypeUserObject_getMoodMediaObject__void
.type m_Skymu_WebServices_SkypeUserObject_getMoodMediaObject__void, @function
m_Skymu_WebServices_SkypeUserObject_getMoodMediaObject__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_getMoodMediaObject_void_0000:
    xor %eax, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_getMoodMediaObject_void_0001:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeUserObject_getMoodMediaObject_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeUserObject_getMoodMediaObject__void, .-m_Skymu_WebServices_SkypeUserObject_getMoodMediaObject__void

.globl m_Skymu_WebServices_SkypeUserObject_hasCapability__i4
.type m_Skymu_WebServices_SkypeUserObject_hasCapability__i4, @function
m_Skymu_WebServices_SkypeUserObject_hasCapability__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0001:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0002:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0003:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_000f
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0005:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0006:
    mov $4, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0007:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0011
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0009:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_000a:
    mov $5, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_000b:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0013
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_000d:
    jmp .Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0015
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_000f:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0010:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0011:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0012:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0013:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0014:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0015:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_0016:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeUserObject_hasCapability_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeUserObject_hasCapability__i4, .-m_Skymu_WebServices_SkypeUserObject_hasCapability__i4

.globl m_Skymu_WebServices_SkypeUserObject_phoneOther__i4
.type m_Skymu_WebServices_SkypeUserObject_phoneOther__i4, @function
m_Skymu_WebServices_SkypeUserObject_phoneOther__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_phoneOther_i4_0000:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_phoneOther_i4_0001:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeUserObject_phoneOther_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeUserObject_phoneOther__i4, .-m_Skymu_WebServices_SkypeUserObject_phoneOther__i4

.globl m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName__void
.type m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName__void, @function
m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0006:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0065
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0008:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0009:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_000e:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0013:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0014:
    jmp .Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_004c
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0016:
    lea -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0018:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Current__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_001d:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0022:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0023:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0024:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0029:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_002a:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_002f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0034:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_004c
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0036:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0037:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_003c:
    mov -48(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0041:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_004c
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0043:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0044:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0049:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_004a:
    jmp .Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_006c
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_004c:
    lea -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_004e:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_MoveNext__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0053:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0016
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0055:
    jmp .Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0065
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0065:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_0066:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_006b:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_006c:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_006d:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName__void, .-m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName__void

.globl m_Skymu_WebServices_ClientObject_FormatDateShort__i8
.type m_Skymu_WebServices_ClientObject_FormatDateShort__i8, @function
m_Skymu_WebServices_ClientObject_FormatDateShort__i8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatDateShort_i8_0000:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatDateShort_i8_0001:
    mov -48(%rbp), %rdi
    call m_System_DateTimeOffset_FromUnixTimeSeconds__i8
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatDateShort_i8_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatDateShort_i8_0007:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatDateShort_i8_0009:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_get_LocalDateTime__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatDateShort_i8_000e:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatDateShort_i8_000f:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatDateShort_i8_0011:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTime_ToShortDateString__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatDateShort_i8_0016:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_ClientObject_FormatDateShort_i8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_ClientObject_FormatDateShort__i8, .-m_Skymu_WebServices_ClientObject_FormatDateShort__i8

.globl m_Skymu_WebServices_ClientObject_FormatTimeShort__i8
.type m_Skymu_WebServices_ClientObject_FormatTimeShort__i8, @function
m_Skymu_WebServices_ClientObject_FormatTimeShort__i8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatTimeShort_i8_0000:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatTimeShort_i8_0001:
    mov -48(%rbp), %rdi
    call m_System_DateTimeOffset_FromUnixTimeSeconds__i8
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatTimeShort_i8_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatTimeShort_i8_0007:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatTimeShort_i8_0009:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_get_LocalDateTime__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatTimeShort_i8_000e:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatTimeShort_i8_000f:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatTimeShort_i8_0011:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTime_ToShortTimeString__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_ClientObject_FormatTimeShort_i8_0016:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_ClientObject_FormatTimeShort_i8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_ClientObject_FormatTimeShort__i8, .-m_Skymu_WebServices_ClientObject_FormatTimeShort__i8

.globl m_Skymu_WebServices_ClientObject_SendUDPStats__i4_i4
.type m_Skymu_WebServices_ClientObject_SendUDPStats__i4_i4, @function
m_Skymu_WebServices_ClientObject_SendUDPStats__i4_i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_WebServices_ClientObject_SendUDPStats_i4_i4_0000:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_ClientObject_SendUDPStats_i4_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_ClientObject_SendUDPStats__i4_i4, .-m_Skymu_WebServices_ClientObject_SendUDPStats__i4_i4

.globl m_Skymu_WebServices_ClientObject_ctor__void
.type m_Skymu_WebServices_ClientObject_ctor__void, @function
m_Skymu_WebServices_ClientObject_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_ClientObject_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_ClientObject_ctor_void_0001:
    lea .LS_0_m_Skymu_WebServices_ClientObject_ctor_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_ClientObject_ctor_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_ClientObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_ClientObject_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_ClientObject_ctor_void_000c:
    lea .LS_2_m_Skymu_WebServices_ClientObject_ctor_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_ClientObject_ctor_void_0011:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_ClientObject_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_ClientObject_ctor_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_ClientObject_ctor_void_0017:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_ClientObject_ctor_void_001c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_ClientObject_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_ClientObject_ctor__void, .-m_Skymu_WebServices_ClientObject_ctor__void

    .globl m_Skymu_WebServices_Home_InsertAdBlock__void
    .type m_Skymu_WebServices_Home_InsertAdBlock__void, @function
m_Skymu_WebServices_Home_InsertAdBlock__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_WebServices_Home_InsertAdBlock_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_WebServices_Home_InsertAdBlock__void, .-m_Skymu_WebServices_Home_InsertAdBlock__void

    .globl m_Skymu_WebServices_SkypeAPI_FireMoodUpdate__ref_ref
    .type m_Skymu_WebServices_SkypeAPI_FireMoodUpdate__ref_ref, @function
m_Skymu_WebServices_SkypeAPI_FireMoodUpdate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_WebServices_SkypeAPI_FireMoodUpdate_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_WebServices_SkypeAPI_FireMoodUpdate__ref_ref, .-m_Skymu_WebServices_SkypeAPI_FireMoodUpdate__ref_ref

    .globl m_Skymu_WebServices_SkypeAPI_FireAvatarChange__ref
    .type m_Skymu_WebServices_SkypeAPI_FireAvatarChange__ref, @function
m_Skymu_WebServices_SkypeAPI_FireAvatarChange__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_WebServices_SkypeAPI_FireAvatarChange_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_WebServices_SkypeAPI_FireAvatarChange__ref, .-m_Skymu_WebServices_SkypeAPI_FireAvatarChange__ref

    .globl m_Skymu_WebServices_SkypeAPI_FireShowingChanged__b
    .type m_Skymu_WebServices_SkypeAPI_FireShowingChanged__b, @function
m_Skymu_WebServices_SkypeAPI_FireShowingChanged__b:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_WebServices_SkypeAPI_FireShowingChanged_b(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_WebServices_SkypeAPI_FireShowingChanged__b, .-m_Skymu_WebServices_SkypeAPI_FireShowingChanged__b

    .globl m_Skymu_WebServices_SkypeAPI_FireLiveChanged__b
    .type m_Skymu_WebServices_SkypeAPI_FireLiveChanged__b, @function
m_Skymu_WebServices_SkypeAPI_FireLiveChanged__b:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_WebServices_SkypeAPI_FireLiveChanged_b(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_WebServices_SkypeAPI_FireLiveChanged__b, .-m_Skymu_WebServices_SkypeAPI_FireLiveChanged__b

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_WebServices_Home_c_cctor_void:
    .asciz "Skymu.WebServices.Home/'<>c'"

.LN_1_m_Skymu_WebServices_Home_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_WebServices_Home_c_DisplayClass6_0_OnLoadCompleted_b_0_void:
    .asciz "contacts"

.LN_0_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "browser"

.LN_2_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "browser"

.LN_3_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "_browser"

.LN_4_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "user"

.LN_5_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "_user"

.LN_6_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "contacts"

.LN_7_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "_contacts"

.LN_8_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "_browser"

.LN_9_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "user"

.LN_10_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "contacts"

.LN_11_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "Skymu.WebServices.SkypeExternalObject"

.LN_12_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "_browser"

.LN_13_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "System.Windows.Navigation.LoadCompletedEventHandler"

.LS_14_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .short 83, 107, 121, 109, 117

.LS_15_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .short 72, 111, 109, 101, 67, 97, 99, 104, 101

.LS_16_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .short 105, 110, 100, 101, 120, 46, 104, 116, 109, 108

.LN_17_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<home_index>5__2"

.LN_18_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<home_index>5__2"

.LS_19_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .short 83, 107, 121, 109, 117, 72, 111, 109, 101, 76, 65, 70

.LN_20_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<>1__state"

.LN_21_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<>u__1"

.LN_22_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<>t__builder"

.LN_23_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<>u__1"

.LN_24_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<>u__1"

.LN_25_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<>1__state"

.LN_26_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "LocalMachine"

.LS_27_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .short 83, 79, 70, 84, 87, 65, 82, 69, 92, 77, 105, 99, 114, 111, 115, 111, 102, 116, 92, 73, 110, 116, 101, 114, 110, 101, 116, 32, 69, 120, 112, 108, 111, 114, 101, 114

.LS_28_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .short 86, 101, 114, 115, 105, 111, 110

.LS_29_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .short 102, 105, 108, 101, 58, 47, 47, 49, 50, 55, 46, 48, 46, 48, 46, 49, 47

.LN_30_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<home_index>5__2"

.LS_31_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .short 36

.LN_32_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<home_index>5__2"

.LN_33_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<home_index>5__2"

.LN_34_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "_browser"

.LN_35_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<home_index>5__2"

.LN_36_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "System.Uri"

.LN_37_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "_browser"

.LN_38_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<home_index>5__2"

.LN_39_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "System.Uri"

.LN_40_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<>1__state"

.LN_41_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<home_index>5__2"

.LN_42_m_Skymu_WebServices_Home_Generate_d_3_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_Home_Generate_d_3_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_Home_Generate_ref_ref_gen:
    .asciz "<>t__builder"

.LN_1_m_Skymu_WebServices_Home_Generate_ref_ref_gen:
    .asciz "browser"

.LN_2_m_Skymu_WebServices_Home_Generate_ref_ref_gen:
    .asciz "user"

.LN_3_m_Skymu_WebServices_Home_Generate_ref_ref_gen:
    .asciz "contacts"

.LN_4_m_Skymu_WebServices_Home_Generate_ref_ref_gen:
    .asciz "<>1__state"

.LN_5_m_Skymu_WebServices_Home_Generate_ref_ref_gen:
    .asciz "<>t__builder"

.LN_6_m_Skymu_WebServices_Home_Generate_ref_ref_gen:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_Home_InvokeEval_ref:
    .asciz "_browser"

.LS_1_m_Skymu_WebServices_Home_InvokeEval_ref:
    .short 101, 118, 97, 108

.LN_0_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref:
    .asciz "_browser"

.LN_1_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref:
    .asciz "_browser"

.LN_2_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref:
    .asciz "_browser"

.LN_3_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref:
    .asciz "_user"

.LN_4_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref:
    .asciz "_user"

.LN_5_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref:
    .asciz "_contacts"

.LN_6_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref:
    .asciz "Skymu.WebServices.Home/'<>c__DisplayClass6_0'"

.LN_7_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref:
    .asciz "_contacts"

.LN_8_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref:
    .asciz "contacts"

.LN_9_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref:
    .asciz "_browser"

.LN_10_m_Skymu_WebServices_Home_OnLoadCompleted_ref_ref:
    .asciz "System.Action"

.LN_0_m_Skymu_WebServices_Home_FireMoodUpdate_ref_ref_arr:
    .asciz "_browser"

.LS_0_m_Skymu_WebServices_Home_InjectAvatar_ref_arr:
    .short 100, 97, 116, 97, 58, 105, 109, 97, 103, 101, 47, 106, 112, 101, 103, 59, 98, 97, 115, 101, 54, 52, 44

.LS_1_m_Skymu_WebServices_Home_InjectAvatar_ref_arr:
    .short 40, 102, 117, 110, 99, 116, 105, 111, 110, 40, 41, 123, 118, 97, 114, 32, 105, 109, 103, 115, 61, 100, 111, 99, 117, 109, 101, 110, 116, 46, 103, 101, 116, 69, 108, 101, 109, 101, 110, 116, 115, 66, 121, 84, 97, 103, 78, 97, 109, 101, 40, 39, 105, 109, 103, 39, 41, 59, 102, 111, 114, 40, 118, 97, 114, 32, 105, 61, 48, 59, 105, 60, 105, 109, 103, 115, 46, 108, 101, 110, 103, 116, 104, 59, 105, 43, 43, 41, 123, 118, 97, 114, 32, 115, 61, 105, 109, 103, 115, 91, 105, 93, 46, 115, 114, 99, 124, 124, 39, 39, 44, 99, 61, 105, 109, 103, 115, 91, 105, 93, 46, 99, 108, 97, 115, 115, 78, 97, 109, 101, 124, 124, 39, 39, 59, 105, 102, 40, 99, 46, 105, 110, 100, 101, 120, 79, 102, 40, 39, 117, 115, 101, 114

.LS_2_m_Skymu_WebServices_Home_InjectAvatar_ref_arr:
    .short 39, 41, 33, 61, 61, 45, 49, 124, 124, 115, 46, 105, 110, 100, 101, 120, 79, 102, 40, 39, 97, 118, 97, 116, 97, 114, 46, 108, 111, 99, 97, 108, 47

.LS_3_m_Skymu_WebServices_Home_InjectAvatar_ref_arr:
    .short 39, 41, 33, 61, 61, 45, 49, 41, 105, 109, 103, 115, 91, 105, 93, 46, 115, 114, 99, 61, 39

.LS_4_m_Skymu_WebServices_Home_InjectAvatar_ref_arr:
    .short 39, 59, 125, 125, 41, 40, 41, 59

.LS_0_m_Skymu_WebServices_Home_GetLanguage_void:
    .short 76, 97, 110, 103, 117, 97, 103, 101, 115

.LS_1_m_Skymu_WebServices_Home_GetLanguage_void:
    .short 104, 111, 109, 101, 45, 117, 110, 97, 118, 97, 105, 108, 97, 98, 108, 101, 46, 106, 115, 111, 110

.LS_2_m_Skymu_WebServices_Home_GetLanguage_void:
    .short 101, 110, 45, 85, 83

.LN_3_m_Skymu_WebServices_Home_GetLanguage_void:
    .asciz "<>9__9_0"

.LN_4_m_Skymu_WebServices_Home_GetLanguage_void:
    .asciz "<>9"

.LN_5_m_Skymu_WebServices_Home_GetLanguage_void:
    .asciz "bool>"

.LN_6_m_Skymu_WebServices_Home_GetLanguage_void:
    .asciz "<>9__9_0"

.LS_7_m_Skymu_WebServices_Home_GetLanguage_void:
    .short 101, 110, 45, 85, 83

.LN_8_m_Skymu_WebServices_Home_GetLanguage_void:
    .asciz "System.Text.Json.JsonElement>"

.LS_9_m_Skymu_WebServices_Home_GetLanguage_void:
    .short 101, 110

.LN_10_m_Skymu_WebServices_Home_GetLanguage_void:
    .asciz "System.Text.Json.JsonElement>"

.LN_0_m_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen:
    .asciz "_user"

.LN_1_m_Skymu_WebServices_SkypeExternalObject_ctor_ref_gen:
    .asciz "_contacts"

.LN_0_m_Skymu_WebServices_SkypeExternalObject_getapi_i4:
    .asciz "_user"

.LN_1_m_Skymu_WebServices_SkypeExternalObject_getapi_i4:
    .asciz "_contacts"

.LN_2_m_Skymu_WebServices_SkypeExternalObject_getapi_i4:
    .asciz "Skymu.WebServices.SkypeAPI"

.LN_3_m_Skymu_WebServices_SkypeExternalObject_getapi_i4:
    .asciz "_api"

.LN_4_m_Skymu_WebServices_SkypeExternalObject_getapi_i4:
    .asciz "_api"

.LN_0_m_Skymu_WebServices_SkypeExternalObject_GetAPI_void:
    .asciz "_api"

.LN_0_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "Skymu.WebServices.SkypeAPI/'<>c__DisplayClass34_0'"

.LN_2_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>8__1"

.LN_3_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "SkymuHttpClient"

.LS_4_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 119, 119, 119, 46, 115, 107, 121, 109, 117, 46, 97, 112, 112, 47, 97, 100, 115, 47, 108, 105, 115, 116, 46, 106, 115, 111, 110

.LN_5_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_6_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_8_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>8__1"

.LN_12_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "ads"

.LN_13_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>8__1"

.LN_14_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "System.Action"

.LN_15_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_16_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>8__1"

.LN_17_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_d_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_SkypeAPI_c_cctor_void:
    .asciz "Skymu.WebServices.SkypeAPI/'<>c'"

.LN_1_m_Skymu_WebServices_SkypeAPI_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void:
    .asciz "<>t__builder"

.LN_3_m_Skymu_WebServices_SkypeAPI_c_FetchAdListAsync_b_34_0_void:
    .asciz "<>t__builder"

.LS_0_m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void:
    .short 119, 105, 110, 100, 111, 119, 46, 79, 110, 65, 100, 115, 76, 111, 97, 100, 101, 100, 40

.LN_1_m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void:
    .asciz "ads"

.LS_2_m_Skymu_WebServices_SkypeAPI_c_DisplayClass34_0_FetchAdListAsync_b_1_void:
    .short 41, 59

.LN_0_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "Skymu.WebServices.ClientObject"

.LN_1_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "_client"

.LN_2_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "string>"

.LN_3_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "_storage"

.LN_4_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "_contacts"

.LN_5_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "Skymu.WebServices.LocalUserObject"

.LN_6_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "handle"

.LN_7_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "Empty"

.LN_8_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "MoodText"

.LN_9_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "LocalUser"

.LN_10_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "Skymu.WebServices.AccountObject"

.LN_11_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "ContactsCount"

.LN_12_m_Skymu_WebServices_SkypeAPI_ctor_ref_gen:
    .asciz "_account"

.LN_0_m_Skymu_WebServices_SkypeAPI_getAccount_void:
    .asciz "_account"

.LN_0_m_Skymu_WebServices_SkypeAPI_getClient_void:
    .asciz "_client"

.LN_0_m_Skymu_WebServices_SkypeAPI_getUser_ref:
    .asciz "_contacts"

.LN_1_m_Skymu_WebServices_SkypeAPI_getUser_ref:
    .asciz "Skymu.WebServices.SkypeUserObject"

.LN_0_m_Skymu_WebServices_SkypeAPI_Users_i4:
    .asciz "Skymu.WebServices.UserEntry>"

.LN_1_m_Skymu_WebServices_SkypeAPI_Users_i4:
    .asciz "_contacts"

.LN_2_m_Skymu_WebServices_SkypeAPI_Users_i4:
    .asciz "_contacts"

.LN_3_m_Skymu_WebServices_SkypeAPI_Users_i4:
    .asciz "Skymu.WebServices.UserEntry"

.LN_4_m_Skymu_WebServices_SkypeAPI_Users_i4:
    .asciz "Handle"

.LN_5_m_Skymu_WebServices_SkypeAPI_Users_i4:
    .asciz "Popularity"

.LN_6_m_Skymu_WebServices_SkypeAPI_Users_i4:
    .asciz "Skymu.WebServices.UsersCollection"

.LN_0_m_Skymu_WebServices_SkypeAPI_fetchLocal_ref:
    .asciz "_storage"

.LS_1_m_Skymu_WebServices_SkypeAPI_fetchLocal_ref:
    .short 0

.LN_0_m_Skymu_WebServices_SkypeAPI_storeLocal_ref_ref:
    .asciz "_storage"

.LS_0_m_Skymu_WebServices_SkypeAPI_libprop_i4:
    .short 48

.LN_0_m_Skymu_WebServices_SkypeAPI_RecentAlerts_i4_i4:
    .asciz "Skymu.WebServices.AlertObject>"

.LN_1_m_Skymu_WebServices_SkypeAPI_RecentAlerts_i4_i4:
    .asciz "Skymu.WebServices.AlertCollection"

.LN_0_m_Skymu_WebServices_SkypeAPI_setAvatarListener_ref:
    .asciz "_avatarListener"

.LN_0_m_Skymu_WebServices_SkypeAPI_setShowingListener_ref:
    .asciz "_showingListener"

.LN_0_m_Skymu_WebServices_SkypeAPI_setLiveListener_ref:
    .asciz "_liveListener"

.LN_0_m_Skymu_WebServices_SkypeAPI_setLanguageChangeListener_ref:
    .asciz "_languageListener"

.LN_0_m_Skymu_WebServices_SkypeAPI_setMoodListener_ref:
    .asciz "_moodListener"

.LN_0_m_Skymu_WebServices_SkypeAPI_setAlertListener_ref:
    .asciz "_alertListener"

.LN_0_m_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void:
    .asciz "<>9__34_0"

.LN_1_m_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void:
    .asciz "<>9"

.LN_2_m_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void:
    .asciz "System.Threading.Tasks.Task>"

.LN_3_m_Skymu_WebServices_SkypeAPI_FetchAdListAsync_void:
    .asciz "<>9__34_0"

.LN_0_m_Skymu_WebServices_UsersCollection_get_Count_void:
    .asciz "_items"

.LN_0_m_Skymu_WebServices_UsersCollection_ctor_gen:
    .asciz "_items"

.LN_0_m_Skymu_WebServices_UsersCollection_Call_i4:
    .asciz "_items"

.LN_0_m_Skymu_WebServices_UserEntry_ctor_void:
    .asciz "Empty"

.LN_1_m_Skymu_WebServices_UserEntry_ctor_void:
    .asciz "Handle"

.LN_0_m_Skymu_WebServices_LocalUserObject_ctor_void:
    .asciz "Empty"

.LN_1_m_Skymu_WebServices_LocalUserObject_ctor_void:
    .asciz "handle"

.LN_2_m_Skymu_WebServices_LocalUserObject_ctor_void:
    .asciz "Empty"

.LN_3_m_Skymu_WebServices_LocalUserObject_ctor_void:
    .asciz "MoodText"

.LN_4_m_Skymu_WebServices_LocalUserObject_ctor_void:
    .asciz "Empty"

.LN_5_m_Skymu_WebServices_LocalUserObject_ctor_void:
    .asciz "PhoneMobile"

.LN_0_m_Skymu_WebServices_AccountObject_ctor_void:
    .asciz "Skymu.WebServices.SubscriptionsObject"

.LN_1_m_Skymu_WebServices_AccountObject_ctor_void:
    .asciz "Subscriptions"

.LN_2_m_Skymu_WebServices_AccountObject_ctor_void:
    .asciz "Empty"

.LN_3_m_Skymu_WebServices_AccountObject_ctor_void:
    .asciz "BalanceCurrency"

.LN_4_m_Skymu_WebServices_AccountObject_ctor_void:
    .asciz "RegistrationTimestamp"

.LN_5_m_Skymu_WebServices_AccountObject_ctor_void:
    .asciz "Skymu.WebServices.PartnerCollection"

.LN_6_m_Skymu_WebServices_AccountObject_ctor_void:
    .asciz "Partners"

.LN_7_m_Skymu_WebServices_AccountObject_ctor_void:
    .asciz "Empty"

.LN_8_m_Skymu_WebServices_AccountObject_ctor_void:
    .asciz "IPCountry"

.LN_9_m_Skymu_WebServices_AccountObject_ctor_void:
    .asciz "Empty"

.LN_10_m_Skymu_WebServices_AccountObject_ctor_void:
    .asciz "PartnerChannelStatus"

.LN_0_m_Skymu_WebServices_PartnerCollection_get_Count_void:
    .asciz "_items"

.LN_0_m_Skymu_WebServices_PartnerCollection_Call_i4:
    .asciz "_items"

.LN_0_m_Skymu_WebServices_PartnerCollection_ctor_void:
    .asciz "Skymu.WebServices.PartnerObject>"

.LN_1_m_Skymu_WebServices_PartnerCollection_ctor_void:
    .asciz "_items"

.LN_0_m_Skymu_WebServices_AlertCollection_get_Count_void:
    .asciz "_items"

.LN_0_m_Skymu_WebServices_AlertCollection_ctor_gen:
    .asciz "_items"

.LN_0_m_Skymu_WebServices_AlertCollection_Call_i4:
    .asciz "_items"

.LN_0_m_Skymu_WebServices_PartnerObject_getName_void:
    .asciz "Empty"

.LN_0_m_Skymu_WebServices_PartnerObject_getId_void:
    .asciz "Empty"

.LN_0_m_Skymu_WebServices_AlertObject_getReadStatus_void:
    .asciz "IsUnseen"

.LN_0_m_Skymu_WebServices_AlertObject_setReadStatus_b:
    .asciz "IsUnseen"

.LN_0_m_Skymu_WebServices_AlertObject_getName_void:
    .asciz "PartnerNameDCURI"

.LN_0_m_Skymu_WebServices_AlertObject_getPartnerId_void:
    .asciz "PartnerID"

.LN_0_m_Skymu_WebServices_AlertObject_getAvatarURI_void:
    .asciz "PartnerHeaderDCURI"

.LN_0_m_Skymu_WebServices_AlertObject_MarkSeen_void:
    .asciz "IsUnseen"

.LN_0_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "Empty"

.LN_1_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "PartnerNameDCURI"

.LN_2_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "Empty"

.LN_3_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "PartnerID"

.LN_4_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "Empty"

.LN_5_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "PartnerHeaderDCURI"

.LN_6_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "Empty"

.LN_7_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "MessageButtonCaption"

.LN_8_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "Empty"

.LN_9_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "MessageButtonURI"

.LN_10_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "Empty"

.LN_11_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "MessageHeaderTitle"

.LN_12_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "Empty"

.LN_13_m_Skymu_WebServices_AlertObject_ctor_void:
    .asciz "MessageContent"

.LN_0_m_Skymu_WebServices_SkypeUserObject_ctor_ref_gen:
    .asciz "_skypename"

.LN_1_m_Skymu_WebServices_SkypeUserObject_ctor_ref_gen:
    .asciz "_contacts"

.LN_0_m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void:
    .asciz "_contacts"

.LN_1_m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void:
    .asciz "_contacts"

.LN_2_m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void:
    .asciz "_skypename"

.LN_3_m_Skymu_WebServices_SkypeUserObject_ResolveDisplayName_void:
    .asciz "_skypename"

.LS_0_m_Skymu_WebServices_ClientObject_ctor_void:
    .short 101, 110

.LN_1_m_Skymu_WebServices_ClientObject_ctor_void:
    .asciz "Language"

.LS_2_m_Skymu_WebServices_ClientObject_ctor_void:
    .short 0

.LN_3_m_Skymu_WebServices_ClientObject_ctor_void:
    .asciz "Version"

.LSTUB_m_Skymu_WebServices_Home_InsertAdBlock_void:
    .asciz "Skymu.WebServices.Home::InsertAdBlock  [stack underflow at IL_003d (call): depth 3 < pops 5]"

.LSTUB_m_Skymu_WebServices_SkypeAPI_FireMoodUpdate_ref_ref:
    .asciz "Skymu.WebServices.SkypeAPI::FireMoodUpdate  [stack underflow at IL_0054 (call): depth 1 < pops 5]"

.LSTUB_m_Skymu_WebServices_SkypeAPI_FireAvatarChange_ref:
    .asciz "Skymu.WebServices.SkypeAPI::FireAvatarChange  [stack underflow at IL_004a (call): depth 2 < pops 5]"

.LSTUB_m_Skymu_WebServices_SkypeAPI_FireShowingChanged_b:
    .asciz "Skymu.WebServices.SkypeAPI::FireShowingChanged  [stack underflow at IL_004a (call): depth 2 < pops 5]"

.LSTUB_m_Skymu_WebServices_SkypeAPI_FireLiveChanged_b:
    .asciz "Skymu.WebServices.SkypeAPI::FireLiveChanged  [stack underflow at IL_004a (call): depth 2 < pops 5]"

    .section .note.GNU-stack,"",@progbits
