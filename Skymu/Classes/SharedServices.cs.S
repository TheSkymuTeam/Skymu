# Classes/SharedServices.cs
    .text

.globl m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage__ref
.type m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage__ref, @function
m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateAvatarImage_ref_0000:
    lea .LS_0_m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage_ref(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateAvatarImage_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateAvatarImage_ref_0006:
    lea .LS_1_m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateAvatarImage_ref_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateAvatarImage_ref_0010:
    mov -24(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoad__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateAvatarImage_ref_0015:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_SharedServices_GenerateAvatarImage_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage__ref, .-m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage__ref

.globl m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars__void
.type m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars__void, @function
m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void_0000:
    lea .LS_0_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void_0005:
    mov -16(%rbp), %rdi
    call m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage__ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void_000a:
    lea .LN_1_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void_000f:
    lea .LS_2_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void_0014:
    mov -16(%rbp), %rdi
    call m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage__ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void_0019:
    lea .LN_3_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void_001e:
    lea .LS_4_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void_0023:
    mov -16(%rbp), %rdi
    call m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage__ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void_0028:
    lea .LN_5_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void_002d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars__void, .-m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars__void

.globl m_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode__ref
.type m_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode__ref, @function
m_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode__ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0000:
    lea .LN_0_m_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Text_StringBuilder_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0005:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0007:
    mov $45, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0009:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_000a:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__c_v
    mov %rax, -64(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_000f:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0010:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0011:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0012:
    jmp .Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0030
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0014:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0015:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0016:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0017:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0018:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0019:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_001a:
    mov $16, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_001c:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_Convert_ToInt32__ref_i4
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0021:
    mov -88(%rbp), %rdi
    call m_System_Char_ConvertFromUtf32__i4
    mov %rax, -88(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0026:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_StringBuilder_Append__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_002b:
    mov -80(%rbp), %rax
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_002c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_002d:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_002e:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_002f:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0030:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0031:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0032:
    mov -72(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0033:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0034:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0014
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0036:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_0037:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_003c:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_003e:
    jmp .Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_004a
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_004a:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_004c:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode__ref, .-m_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode__ref

.globl m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate__void
.type m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate__void, @function
m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate__void, .-m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate__void

.globl m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate__ref
.type m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate__ref, @function
m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate__ref, .-m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate__ref

.globl m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate__void
.type m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate__void, @function
m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate__void, .-m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate__void

.globl m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate__ref
.type m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate__ref, @function
m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate__ref, .-m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate__ref

.globl m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate__void
.type m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate__void, @function
m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate__void, .-m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate__void

.globl m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate__ref
.type m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate__ref, @function
m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate__ref, .-m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate__ref

.globl m_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate__ref_ref
.type m_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate__ref_ref, @function
m_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0006:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_000f
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0008:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0009:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_000e:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_000f:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0010:
    mov -48(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0015:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_001e
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0018:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_001d:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_001e:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_001f:
    mov -56(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0024:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_002d
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0026:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0027:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_002c:
    mov -64(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_002d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_002e:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_002f:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0030:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_DataTemplateSelector_SelectTemplate__ref_ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_0035:
    mov -64(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate__ref_ref, .-m_Skymu_Infrastructure_CompactRecentsTemplateSelector_SelectTemplate__ref_ref

.globl m_Skymu_Infrastructure_CompactRecentsTemplateSelector_ctor__void
.type m_Skymu_Infrastructure_CompactRecentsTemplateSelector_ctor__void, @function
m_Skymu_Infrastructure_CompactRecentsTemplateSelector_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_DataTemplateSelector_ctor__void
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Infrastructure_CompactRecentsTemplateSelector_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Infrastructure_CompactRecentsTemplateSelector_ctor__void, .-m_Skymu_Infrastructure_CompactRecentsTemplateSelector_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage_ref:
    .short 84, 104, 101, 109, 101, 97, 98, 108, 101, 47, 80, 114, 111, 102, 105, 108, 101, 32, 80, 105, 99, 116, 117, 114, 101, 115, 47

.LS_1_m_Skymu_Infrastructure_SharedServices_GenerateAvatarImage_ref:
    .short 46, 112, 110, 103

.LS_0_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void:
    .short 103, 114, 111, 117, 112

.LN_1_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void:
    .asciz "GroupAvatar"

.LS_2_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void:
    .short 97, 110, 111, 110, 121, 109, 111, 117, 115

.LN_3_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void:
    .asciz "AnonymousAvatar"

.LS_4_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void:
    .short 117, 110, 107, 110, 111, 119, 110

.LN_5_m_Skymu_Infrastructure_SharedServices_GenerateGlobalAvatars_void:
    .asciz "UnknownAvatar"

.LN_0_m_Skymu_Infrastructure_SharedServices_ConvertHexKeyToUnicode_ref:
    .asciz "System.Text.StringBuilder"

.LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_DateHeaderTemplate_void:
    .asciz "<DateHeaderTemplate>k__BackingField"

.LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_DateHeaderTemplate_ref:
    .asciz "<DateHeaderTemplate>k__BackingField"

.LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactDirectMessageTemplate_void:
    .asciz "<CompactDirectMessageTemplate>k__BackingField"

.LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactDirectMessageTemplate_ref:
    .asciz "<CompactDirectMessageTemplate>k__BackingField"

.LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_get_CompactGroupTemplate_void:
    .asciz "<CompactGroupTemplate>k__BackingField"

.LN_0_m_Skymu_Infrastructure_CompactRecentsTemplateSelector_set_CompactGroupTemplate_ref:
    .asciz "<CompactGroupTemplate>k__BackingField"

    .section .note.GNU-stack,"",@progbits
