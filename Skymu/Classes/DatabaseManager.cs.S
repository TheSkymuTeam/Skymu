# Classes/DatabaseManager.cs
    .text

.globl m_Skymu_Databases_DatabaseManager_AccountsTable_ctor__ref
.type m_Skymu_Databases_DatabaseManager_AccountsTable_ctor__ref, @function
m_Skymu_Databases_DatabaseManager_AccountsTable_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_ctor_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_ctor_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_ctor_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_ctor_ref_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_AccountsTable_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_ctor_ref_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_AccountsTable_ctor__ref, .-m_Skymu_Databases_DatabaseManager_AccountsTable_ctor__ref

.globl m_Skymu_Databases_DatabaseManager_AccountsTable_Write__ref
.type m_Skymu_Databases_DatabaseManager_AccountsTable_Write__ref, @function
m_Skymu_Databases_DatabaseManager_AccountsTable_Write__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0006:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_000b:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_000c:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_000d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_BeginTransaction__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0012:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0013:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0014:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0019:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_001a:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_001b:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_001c:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_set_Transaction__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0021:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0022:
    lea .LS_1_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $2132, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0027:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_002c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_002d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0032:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0037:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0038:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_003d:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_003e:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rsi
    call shim_box
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0043:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0048:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0049:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_004e:
    lea .LS_4_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0053:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0054:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0059:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_005a:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_005f:
    mov -64(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0064:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0065:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_006d
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0067:
    mov -56(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0068:
    lea .LN_5_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_006d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0072:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0073:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0078:
    lea .LS_6_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_007d:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_007e:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0083:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0084:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0089:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_008a:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0092
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_008c:
    mov -56(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_008d:
    lea .LN_7_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0092:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0097:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0098:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_009d:
    lea .LS_8_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00a2:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00a3:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00a8:
    lea .LN_9_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00ad:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00b2:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00b3:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00b8:
    lea .LS_10_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00bd:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00be:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00c3:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00c4:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00c9:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00ca:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00d2
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00cc:
    mov -56(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00cd:
    lea .LN_11_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00d2:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00d7:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00d8:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00dd:
    lea .LS_12_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00e2:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00e3:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00e8:
    lea .LN_13_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00ed:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00f2:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00f3:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00f8:
    lea .LS_14_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00fd:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_00fe:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0103:
    lea .LN_15_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0108:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_010d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_010e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0113:
    lea .LS_16_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0118:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0119:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_011e:
    lea .LN_17_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0123:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0128:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0129:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_012e:
    lea .LS_18_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0133:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0134:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0139:
    lea .LN_19_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_013e:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0143:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0144:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0149:
    lea .LS_20_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_014e:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_014f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0154:
    lea .LN_21_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0159:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_015e:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_015f:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0164:
    lea .LS_22_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0169:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_016a:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_016f:
    lea .LN_23_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0174:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0179:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_017a:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_017f:
    lea .LS_24_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0184:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0185:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_018a:
    lea .LN_25_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_018f:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0194:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0195:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_019a:
    lea .LS_26_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_019f:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01a0:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01a5:
    lea .LN_27_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01aa:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01af:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01b0:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01b5:
    lea .LS_28_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01ba:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01bb:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01c0:
    lea .LN_29_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01c5:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01ca:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01cb:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01d0:
    lea .LS_30_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01d5:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01d6:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01db:
    lea .LN_31_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01e0:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01e5:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01e6:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01eb:
    lea .LS_32_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01f0:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01f1:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01f6:
    lea .LN_33_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_01fb:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0200:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0201:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0206:
    lea .LS_34_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_020b:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_020c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0211:
    lea .LN_35_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0216:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_021b:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_021c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0221:
    lea .LS_36_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0226:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0227:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_022c:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_022d:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0232:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0233:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_023b
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0235:
    mov -56(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0236:
    lea .LN_37_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_023b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0240:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0241:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0246:
    lea .LS_38_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_024b:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_024c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0251:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0252:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Status__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0257:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0258:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0260
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_025a:
    mov -56(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_025b:
    lea .LN_39_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0260:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0265:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0266:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_026b:
    lea .LS_40_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0270:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0271:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0276:
    lea .LN_41_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_027b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0280:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0281:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0286:
    lea .LS_42_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_028b:
    mov $4, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_028c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0291:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0292:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0297:
    mov -64(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_PrepareAvatarBytes__arr
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_029c:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_029d:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02a5
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_029f:
    mov -56(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02a0:
    lea .LN_43_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02a5:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02aa:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02ab:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02b0:
    lea .LS_44_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02b5:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02b6:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02bb:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02bc:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02c1:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02c2:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02ca
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02c4:
    mov -56(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02c5:
    lea .LN_45_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02ca:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02cf:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02d0:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02d5:
    lea .LS_46_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02da:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02db:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02e0:
    lea .LN_47_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02e5:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02ea:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02eb:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02f0:
    lea .LS_48_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02f5:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02f6:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_02fb:
    lea .LN_49_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0300:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0305:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0306:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_030b:
    lea .LS_50_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0310:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0311:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0316:
    lea .LN_51_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_031b:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_InternalName__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0320:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0325:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0326:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteNonQuery__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_032b:
    mov -56(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_032c:
    jmp .Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0338
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0338:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0339:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbTransaction_Commit__void
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_033e:
    jmp .Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0353
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0353:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_0354:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_AccountsTable_Write__ref, .-m_Skymu_Databases_DatabaseManager_AccountsTable_Write__ref

.globl m_Skymu_Databases_DatabaseManager_ContactsTable_ctor__ref
.type m_Skymu_Databases_DatabaseManager_ContactsTable_ctor__ref, @function
m_Skymu_Databases_DatabaseManager_ContactsTable_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_ctor_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_ctor_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_ctor_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_ctor_ref_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ContactsTable_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_ctor_ref_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ContactsTable_ctor__ref, .-m_Skymu_Databases_DatabaseManager_ContactsTable_ctor__ref

.globl m_Skymu_Databases_DatabaseManager_ContactsTable_Read__void
.type m_Skymu_Databases_DatabaseManager_ContactsTable_Read__void, @function
m_Skymu_Databases_DatabaseManager_ContactsTable_Read__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0000:
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_User_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0005:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0007:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_000c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0011:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0012:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0013:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0018:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0019:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_001a:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_void(%rip), %rdi
    mov $79, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_001f:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0024:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0025:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_ExecuteReader__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_002a:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_002b:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_003a
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_002d:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_002e:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_002f:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0030:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_UserFromReader__ref_i4
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0035:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_Add__gen
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_003a:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_003b:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_Read__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0040:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_002d
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0042:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0062
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0062:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0063:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_ToArray__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_0068:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ContactsTable_Read__void, .-m_Skymu_Databases_DatabaseManager_ContactsTable_Read__void

.globl m_Skymu_Databases_DatabaseManager_ContactsTable_Read__ref
.type m_Skymu_Databases_DatabaseManager_ContactsTable_Read__ref, @function
m_Skymu_Databases_DatabaseManager_ContactsTable_Read__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0006:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_000b:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_000c:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_000d:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0012:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0013:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0014:
    lea .LS_1_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref(%rip), %rdi
    mov $116, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0019:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_001e:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_001f:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0024:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0029:
    mov $3, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_002a:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_002f:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0030:
    mov -72(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0035:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_003a:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_003b:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_ExecuteReader__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0040:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0041:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0042:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_Read__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0047:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_004c
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0049:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_004a:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0053
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_004c:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_004d:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_004e:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_UserFromReader__ref_i4
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0053:
    mov -64(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0054:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0074
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0074:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_0075:
    mov -64(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ContactsTable_Read__ref, .-m_Skymu_Databases_DatabaseManager_ContactsTable_Read__ref

.globl m_Skymu_Databases_DatabaseManager_ContactsTable_Write__gen
.type m_Skymu_Databases_DatabaseManager_ContactsTable_Write__gen, @function
m_Skymu_Databases_DatabaseManager_ContactsTable_Write__gen:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0001:
    mov -96(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0006:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_000b:
    mov -96(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_000c:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_000d:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_BeginTransaction__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0012:
    mov -96(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0013:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0014:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0019:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_001a:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_001b:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_001c:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_set_Transaction__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0021:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0022:
    lea .LS_1_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $2554, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0027:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_002c:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_002d:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0032:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0037:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0038:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_003d:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_003e:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_003f:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0044:
    lea .LS_3_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0049:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_004a:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_004f:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0050:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0051:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0056:
    lea .LS_4_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_005b:
    mov $3, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_005c:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0061:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0062:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0063:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0068:
    lea .LS_5_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_006d:
    mov $3, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_006e:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0073:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0074:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0075:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_007a:
    lea .LS_6_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_007f:
    mov $3, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0080:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0085:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0086:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0087:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_008c:
    lea .LS_7_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0091:
    mov $3, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0092:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0097:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0098:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0099:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_009e:
    lea .LS_8_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00a3:
    mov $3, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00a4:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00a9:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00aa:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00ab:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00b0:
    lea .LS_9_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00b5:
    mov $3, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00b6:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00bb:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00bc:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00bd:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00c2:
    lea .LS_10_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00c7:
    mov $4, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00c8:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00cd:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00ce:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00cf:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00d4:
    lea .LS_11_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00d9:
    mov $3, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00da:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00df:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00e0:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00e1:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00e6:
    lea .LS_12_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00eb:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00ec:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00f1:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00f2:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00f3:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00f8:
    lea .LS_13_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00fd:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_00fe:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0103:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0104:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0105:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_010a:
    lea .LS_14_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_010f:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0110:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0115:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0116:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0117:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_GetEnumerator__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_011c:
    mov -96(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_011d:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0346
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0122:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0123:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Current__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0128:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_012a:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_012c:
    mov -96(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0131:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0133:
    mov -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0135:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0346
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_013a:
    mov -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_013c:
    mov -104(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0141:
    mov -112(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0143:
    mov -88(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0145:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0150
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0147:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0149:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_014e:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0163
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0150:
    mov -88(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0152:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0157:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0158:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_015e
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_015a:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_015b:
    xor %eax, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_015c:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0163
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_015e:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0163:
    mov -112(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0165:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0166:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_016b:
    lea .LS_15_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0170:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0175:
    mov $1, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0176:
    mov -120(%rbp), %rdi
    lea .LN_16_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rsi
    call shim_box
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_017b:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0180:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0181:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0186:
    lea .LS_17_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_018b:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0190:
    mov $1, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0191:
    mov -120(%rbp), %rdi
    lea .LN_18_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rsi
    call shim_box
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0196:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_019b:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_019c:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01a1:
    lea .LS_19_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01a6:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01ab:
    mov -80(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01ad:
    mov -120(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01b2:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01b3:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01bb
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01b5:
    mov -112(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01b6:
    lea .LN_20_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01bb:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01c0:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01c1:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01c6:
    lea .LS_21_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01cb:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01d0:
    mov -72(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01d2:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01d7:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01d8:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01de
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01da:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01db:
    xor %eax, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01dc:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01e3
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01de:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01e3:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01e4:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01ec
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01e6:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01e7:
    lea .LN_22_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01ec:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01f1:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01f2:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01f7:
    lea .LS_23_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_01fc:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0201:
    lea .LN_24_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0206:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_020b:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_020c:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0211:
    lea .LS_25_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0216:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_021b:
    mov -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_021d:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0222:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0223:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0229
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0225:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0226:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0227:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_022e
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0229:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_022e:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_022f:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0237
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0231:
    mov -88(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0232:
    lea .LN_26_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0237:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_023c:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_023d:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0242:
    lea .LS_27_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0247:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_024c:
    mov -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_024e:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0253:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0254:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_025a
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0256:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0257:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0258:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_025f
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_025a:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_025f:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0260:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0268
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0262:
    mov -88(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0263:
    lea .LN_28_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0268:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_026d:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_026e:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0273:
    lea .LS_29_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0278:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_027d:
    lea .LN_30_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0282:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0287:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0288:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_028d:
    lea .LS_31_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0292:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0297:
    mov -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0299:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_029e:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_029f:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02a5
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02a1:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02a2:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02a3:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02aa
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02a5:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02aa:
    mov -96(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_PrepareAvatarBytes__arr
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02af:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02b0:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02b8
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02b2:
    mov -88(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02b3:
    lea .LN_32_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02b8:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02bd:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02be:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02c3:
    lea .LS_33_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02c8:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02cd:
    mov -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02cf:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02d4:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02d5:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02db
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02d7:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02d8:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02d9:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02e0
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02db:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Status__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02e0:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02e1:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02e9
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02e3:
    mov -88(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02e4:
    lea .LN_34_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02e9:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02ee:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02ef:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02f4:
    lea .LS_35_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02f9:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02fe:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_02ff:
    mov -104(%rbp), %rdi
    lea .LN_36_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rsi
    call shim_box
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0304:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0309:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_030a:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_030f:
    lea .LS_37_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0314:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0319:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_031a:
    mov -104(%rbp), %rdi
    lea .LN_38_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rsi
    call shim_box
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_031f:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0324:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0325:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_032a:
    lea .LS_39_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_032f:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0334:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0335:
    mov -104(%rbp), %rdi
    lea .LN_40_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen(%rip), %rsi
    call shim_box
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_033a:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_033f:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0340:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteNonQuery__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0345:
    mov -96(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0346:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0347:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_034c:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0122
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0351:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_035d
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_035d:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0369
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0369:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_036a:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbTransaction_Commit__void
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_036f:
    jmp .Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0384
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0384:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_0385:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ContactsTable_Write__gen, .-m_Skymu_Databases_DatabaseManager_ContactsTable_Write__gen

.globl m_Skymu_Databases_DatabaseManager_ConversationsTable_ctor__ref
.type m_Skymu_Databases_DatabaseManager_ConversationsTable_ctor__ref, @function
m_Skymu_Databases_DatabaseManager_ConversationsTable_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_ctor_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_ctor_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_ctor_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_ctor_ref_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_ctor_ref_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ConversationsTable_ctor__ref, .-m_Skymu_Databases_DatabaseManager_ConversationsTable_ctor__ref

.globl m_Skymu_Databases_DatabaseManager_ConversationsTable_Read__void
.type m_Skymu_Databases_DatabaseManager_ConversationsTable_Read__void, @function
m_Skymu_Databases_DatabaseManager_ConversationsTable_Read__void:
    push %rbp
    mov %rsp, %rbp
    sub $208, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0001:
    mov -144(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0006:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_BuildContactMap__void
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_000c:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap__void
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0011:
    mov -144(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0012:
    lea .LN_1_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_Conversation_ctor__void
    mov %r12, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0017:
    mov -144(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0019:
    mov -144(%rbp), %rdi
    lea .LN_2_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_001e:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0023:
    mov -144(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0024:
    mov -40(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0025:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_002a:
    mov -144(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_002b:
    mov -48(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_002c:
    lea .LS_3_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void(%rip), %rdi
    mov $280, %esi
    call shim_string_new
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0031:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0036:
    mov -48(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0037:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_ExecuteReader__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_003c:
    mov -144(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_003e:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0149
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0043:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0045:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0046:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetInt64__i4
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_004b:
    mov -144(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_004d:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_004f:
    mov $1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0050:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0055:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0066
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0057:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0059:
    mov $1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_005a:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetString__i4
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_005f:
    mov -144(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_UnconvertIdentifier__ref
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0064:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0067
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0066:
    xor %eax, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0067:
    mov -144(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0069:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_006b:
    mov $2, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_006c:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0071:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_007d
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0073:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0075:
    mov $2, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0076:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetInt32__i4
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_007b:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_007e
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_007d:
    mov $0, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_007e:
    mov -144(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0080:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0082:
    mov $3, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0083:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0088:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0094
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_008a:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_008c:
    mov $3, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_008d:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetString__i4
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0092:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0095
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0094:
    xor %eax, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0095:
    mov -144(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0097:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0099:
    mov $4, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_009a:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_009f:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00b0
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00a1:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00a3:
    mov $4, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00a4:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetString__i4
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00a9:
    mov -144(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_UnconvertIdentifier__ref
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00ae:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00b1
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00b0:
    xor %eax, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00b1:
    mov -144(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00b3:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00b5:
    mov $5, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00b6:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00bb:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00c7
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00bd:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00bf:
    mov $5, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00c0:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetInt64__i4
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00c5:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00c9
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00c7:
    mov $0, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00c8:
    mov -144(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00c9:
    mov -152(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00cb:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00cd:
    mov $6, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00ce:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00d3:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00df
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00d5:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00d7:
    mov $6, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00d8:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetInt32__i4
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00dd:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00e0
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00df:
    mov $0, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00e0:
    mov -144(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00e2:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00e4:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00ed
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00e6:
    lea .LN_4_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00eb:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00fd
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00ed:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00ef:
    mov -144(%rbp), %rdi
    call m_System_DateTimeOffset_FromUnixTimeSeconds__i8
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00f4:
    mov -144(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00f6:
    lea -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00f8:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_get_UtcDateTime__void
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00fd:
    mov -144(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_00ff:
    mov -24(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0100:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0102:
    lea -128(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0104:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_TryGetValue__gen_gen
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0109:
    mov -144(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_010a:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_010b:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_010d:
    mov $1, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_010e:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_012c
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0110:
    mov -72(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0112:
    mov -88(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0114:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0116:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0118:
    mov -128(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_011a:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_011b:
    mov -192(%rbp), %rdi
    lea .LN_5_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0120:
    mov -192(%rbp), %rdi
    lea .LN_6_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0125:
    mov -192(%rbp), %r9
    mov -184(%rbp), %r8
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildGroup__ref_ref_i4_v_gen_gen
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_012a:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0144
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_012c:
    mov -72(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_012e:
    mov -96(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0130:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0132:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0134:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0135:
    mov -184(%rbp), %rdi
    lea .LN_7_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_013a:
    mov -184(%rbp), %rdi
    lea .LN_8_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_013f:
    mov -184(%rbp), %r8
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM__ref_ref_i4_v_gen
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0144:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_Add__gen
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0149:
    mov -56(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_014b:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_Read__void
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0150:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0043
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0155:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0177
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0177:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_0178:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_ToArray__void
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_017d:
    mov -144(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ConversationsTable_Read__void, .-m_Skymu_Databases_DatabaseManager_ConversationsTable_Read__void

.globl m_Skymu_Databases_DatabaseManager_ConversationsTable_Read__ref
.type m_Skymu_Databases_DatabaseManager_ConversationsTable_Read__ref, @function
m_Skymu_Databases_DatabaseManager_ConversationsTable_Read__ref:
    push %rbp
    mov %rsp, %rbp
    sub $208, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0001:
    mov -152(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0006:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_BuildContactMap__void
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_000c:
    mov -152(%rbp), %rdi
    lea .LN_1_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0011:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0016:
    mov -152(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0017:
    mov -32(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0018:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_001d:
    mov -152(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_001f:
    mov -104(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0021:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rdi
    mov $261, %esi
    call shim_string_new
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0026:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_002b:
    mov -104(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_002d:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0032:
    lea .LS_3_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0037:
    mov $3, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0038:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_003d:
    mov -24(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_003e:
    mov -160(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0043:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0048:
    mov -104(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_004a:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_ExecuteReader__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_004f:
    mov -152(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0051:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0053:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_Read__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0058:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0062
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_005a:
    xor %eax, %eax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_005b:
    mov -152(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_005d:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01e0
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0062:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0064:
    mov $0, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0065:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetInt64__i4
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_006a:
    mov -152(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_006b:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_006d:
    mov $1, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_006e:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0073:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_007f
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0075:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0077:
    mov $1, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0078:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetInt32__i4
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_007d:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0080
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_007f:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0080:
    mov -152(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0081:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0083:
    mov $2, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0084:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0089:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0095
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_008b:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_008d:
    mov $2, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_008e:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetString__i4
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0093:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0096
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0095:
    xor %eax, %eax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0096:
    mov -152(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0097:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0099:
    mov $3, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_009a:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_009f:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00b0
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00a1:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00a3:
    mov $3, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00a4:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetString__i4
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00a9:
    mov -152(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_UnconvertIdentifier__ref
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00ae:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00b1
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00b0:
    xor %eax, %eax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00b1:
    mov -152(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00b3:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00b5:
    mov $4, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00b6:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00bb:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00c7
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00bd:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00bf:
    mov $4, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00c0:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetInt64__i4
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00c5:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00c9
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00c7:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00c8:
    mov -152(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00c9:
    mov -160(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00cb:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00cd:
    mov $5, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00ce:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00d3:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00df
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00d5:
    mov -112(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00d7:
    mov $5, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00d8:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetInt32__i4
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00dd:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00e0
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00df:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00e0:
    mov -152(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00e2:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00fc
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00fc:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_00fe:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0107
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0100:
    lea .LN_4_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0105:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0117
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0107:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0109:
    mov -152(%rbp), %rdi
    call m_System_DateTimeOffset_FromUnixTimeSeconds__i8
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_010e:
    mov -152(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0110:
    lea -128(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0112:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_get_UtcDateTime__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0117:
    mov -152(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0119:
    lea .LN_5_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Collections_Generic_List_1_string_ctor__void
    mov %r12, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_011e:
    mov -152(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0120:
    mov -32(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0121:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0126:
    mov -152(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0128:
    mov -136(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_012a:
    lea .LS_6_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rdi
    mov $61, %esi
    call shim_string_new
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_012f:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0134:
    mov -136(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0136:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_013b:
    lea .LS_7_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0140:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0141:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0146:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0147:
    mov -160(%rbp), %rdi
    lea .LN_8_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rsi
    call shim_box
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_014c:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0151:
    mov -136(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0153:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_ExecuteReader__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0158:
    mov -152(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_015a:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_017a
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_015c:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_015e:
    mov $0, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_015f:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0164:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_017a
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0166:
    mov -96(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0168:
    mov -144(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_016a:
    mov $0, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_016b:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetString__i4
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0170:
    mov -160(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_UnconvertIdentifier__ref
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0175:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_Add__gen
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_017a:
    mov -144(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_017c:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_Read__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0181:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_015c
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_0183:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_019d
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_019d:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_019e:
    mov $1, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_019f:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01bb
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01a1:
    mov -24(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01a2:
    mov -56(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01a3:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01a5:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01a7:
    mov -96(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01a9:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01aa:
    mov -192(%rbp), %rdi
    lea .LN_9_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01af:
    mov -192(%rbp), %rdi
    lea .LN_10_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01b4:
    mov -192(%rbp), %r9
    mov -184(%rbp), %r8
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildGroup__ref_ref_i4_v_gen_gen
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01b9:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01d2
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01bb:
    mov -24(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01bc:
    mov -64(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01be:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01c0:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01c2:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01c3:
    mov -184(%rbp), %rdi
    lea .LN_11_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01c8:
    mov -184(%rbp), %rdi
    lea .LN_12_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01cd:
    mov -184(%rbp), %r8
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM__ref_ref_i4_v_gen
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01d2:
    mov -152(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01d4:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01e0
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01e0:
    mov -120(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_01e2:
    mov -152(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ConversationsTable_Read__ref, .-m_Skymu_Databases_DatabaseManager_ConversationsTable_Read__ref

.globl m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap__void
.type m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap__void, @function
m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0000:
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Collections_Generic_List_1_string_ctor__void
    mov %r12, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0005:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0007:
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_000c:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0011:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0012:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0013:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0018:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0019:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_001a:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void(%rip), %rdi
    mov $44, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_001f:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0024:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0025:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_ExecuteReader__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_002a:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_002b:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_006e
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_002d:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_002e:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_002f:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0034:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_006e
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0036:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0037:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0038:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetInt64__i4
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_003d:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_003f:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0040:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0042:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0044:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_TryGetValue__gen_gen
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0049:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_005b
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_004b:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_004c:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_004e:
    lea .LN_3_m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Collections_Generic_List_1_string_ctor__void
    mov %r12, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0053:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0054:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0056:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_set_Item__gen_gen
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_005b:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_005d:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_005e:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_005f:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetString__i4
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0064:
    mov -88(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_UnconvertIdentifier__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0069:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_Add__gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_006e:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_006f:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_Read__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0074:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_002d
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0076:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0096
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0096:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_0097:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap__void, .-m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap__void

.globl m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM__ref_ref_i4_v_gen
.type m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM__ref_ref_i4_v_gen, @function
m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM__ref_ref_i4_v_gen:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0000:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0001:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0002:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0006
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0004:
    mov -64(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0005:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0006:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0007:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0009:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_000a:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_000c:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_TryGetValue__gen_gen
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0011:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0012:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0013:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0014:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_001d
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0016:
    mov -64(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0017:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0018:
    mov -72(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_StubUser__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_001d:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_001e:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_001f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0020:
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_System_DateTime_ctor__gen
    mov %r12, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_0025:
    lea .LN_1_m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %r8
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_DirectMessage_ctor__ref_i4_ref_gen
    mov %r12, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_002a:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM__ref_ref_i4_v_gen, .-m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM__ref_ref_i4_v_gen

.globl m_Skymu_Databases_DatabaseManager_ConversationsTable_Write__gen
.type m_Skymu_Databases_DatabaseManager_ConversationsTable_Write__gen, @function
m_Skymu_Databases_DatabaseManager_ConversationsTable_Write__gen:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0001:
    mov -104(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0006:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_000b:
    mov -104(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_000c:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_000d:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_BeginTransaction__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0012:
    mov -104(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0013:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0014:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0019:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_001a:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_001b:
    mov -40(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_001c:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_set_Transaction__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0021:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0022:
    lea .LS_1_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $1445, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0027:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_002c:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_002d:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0032:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0037:
    mov $1, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0038:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_003d:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_003e:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_003f:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0044:
    lea .LS_3_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0049:
    mov $3, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_004a:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_004f:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0050:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0051:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0056:
    lea .LS_4_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_005b:
    mov $3, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_005c:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0061:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0062:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0063:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0068:
    lea .LS_5_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_006d:
    mov $1, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_006e:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0073:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0074:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0075:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_007a:
    lea .LS_6_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_007f:
    mov $3, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0080:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0085:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0086:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0087:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_008c:
    lea .LS_7_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0091:
    mov $3, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0092:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0097:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0098:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0099:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_009e:
    lea .LS_8_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00a3:
    mov $3, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00a4:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00a9:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00aa:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00ab:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00b0:
    lea .LS_9_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00b5:
    mov $4, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00b6:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00bb:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00bc:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00bd:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00c2:
    lea .LS_10_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00c7:
    mov $3, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00c8:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00cd:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00ce:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00cf:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_GetEnumerator__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00d4:
    mov -104(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00d5:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0285
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00da:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00db:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_Current__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00e0:
    mov -104(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00e2:
    mov -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00e4:
    mov -104(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00e9:
    mov -112(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00f0
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00eb:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00ec:
    mov -112(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00ee:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_010f
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00f0:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00f2:
    mov -112(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00f7:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00fe
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00f9:
    mov $2, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00fa:
    mov -120(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00fc:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_010f
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00fe:
    mov -64(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0100:
    mov -120(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0105:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_010c
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0107:
    mov $3, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0108:
    mov -128(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_010a:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_010f
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_010c:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_010d:
    mov -128(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_010f:
    xor %eax, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0110:
    mov -112(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0112:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0114:
    mov -112(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0119:
    mov -120(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_011b:
    mov -88(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_011d:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0134
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_011f:
    mov -88(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0121:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0126:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0127:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_012d
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0129:
    mov -112(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_012a:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_012b:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0132
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_012d:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0132:
    mov -112(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0134:
    mov -64(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0136:
    mov -120(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_013b:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0146
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_013d:
    mov -64(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_013f:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0144:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0148
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0146:
    mov -80(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0148:
    mov -128(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_014a:
    mov -48(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_014b:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0150:
    lea .LS_11_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0155:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_015a:
    mov $1, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_015b:
    mov -136(%rbp), %rdi
    lea .LN_12_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rsi
    call shim_box
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0160:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0165:
    mov -48(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0166:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_016b:
    lea .LS_13_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0170:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0175:
    mov -96(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0177:
    mov -136(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_017c:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_017d:
    mov -136(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0185
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_017f:
    mov -128(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0180:
    lea .LN_14_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0185:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_018a:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_018b:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0190:
    lea .LS_15_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0195:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_019a:
    mov -64(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_019c:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01a1:
    mov -128(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01a6:
    mov -128(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01a7:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01af
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01a9:
    mov -120(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01aa:
    lea .LN_16_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01af:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01b4:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01b5:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01ba:
    lea .LS_17_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01bf:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01c4:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01c6:
    mov -120(%rbp), %rdi
    lea .LN_18_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rsi
    call shim_box
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01cb:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01d0:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01d1:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01d6:
    lea .LS_19_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01db:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01e0:
    mov -64(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01e2:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01e7:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01e8:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01f0
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01ea:
    mov -112(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01eb:
    lea .LN_20_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01f0:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01f5:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01f6:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_01fb:
    lea .LS_21_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0200:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0205:
    lea .LN_22_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_020a:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_020f:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0210:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0215:
    lea .LS_23_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_021a:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_021f:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0221:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0226:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0227:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_022f
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0229:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_022a:
    lea .LN_24_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_022f:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0234:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0235:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_023a:
    lea .LS_25_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_023f:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0244:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0246:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_024b:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_024c:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0254
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_024e:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_024f:
    lea .LN_26_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0254:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0259:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_025a:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_025f:
    lea .LS_27_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0264:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0269:
    mov -80(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_026b:
    mov -112(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0270:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0271:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0279
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0273:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0274:
    lea .LN_28_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0279:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_027e:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_027f:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteNonQuery__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0284:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0285:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0286:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_028b:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_00da
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_0290:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_029c
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_029c:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02a8
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02a8:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02a9:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbTransaction_Commit__void
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02ae:
    jmp .Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02c3
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02c3:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02c4:
    mov -104(%rbp), %rdi
    lea .LN_29_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02c9:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_get_Participants__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02ce:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02cf:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write__gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02d4:
    mov -104(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02d5:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_02d6:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ConversationsTable_Write__gen, .-m_Skymu_Databases_DatabaseManager_ConversationsTable_Write__gen

.globl m_Skymu_Databases_DatabaseManager_ServersTable_ctor__ref
.type m_Skymu_Databases_DatabaseManager_ServersTable_ctor__ref, @function
m_Skymu_Databases_DatabaseManager_ServersTable_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_ctor_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Databases_DatabaseManager_ServersTable_ctor_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_ctor_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_ctor_ref_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ServersTable_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_ctor_ref_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ServersTable_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ServersTable_ctor__ref, .-m_Skymu_Databases_DatabaseManager_ServersTable_ctor__ref

.globl m_Skymu_Databases_DatabaseManager_ServersTable_Write__gen
.type m_Skymu_Databases_DatabaseManager_ServersTable_Write__gen, @function
m_Skymu_Databases_DatabaseManager_ServersTable_Write__gen:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0001:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0006:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_000b:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_000c:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_000d:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_BeginTransaction__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0012:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0013:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0014:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0019:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_001a:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_001b:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_001c:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_set_Transaction__ref
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0021:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0022:
    lea .LS_1_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $1216, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0027:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_002c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_002d:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0032:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0037:
    mov $3, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0038:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_003d:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_003e:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_003f:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0044:
    lea .LS_3_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0049:
    mov $3, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_004a:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_004f:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0050:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0051:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0056:
    lea .LS_4_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_005b:
    mov $3, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_005c:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0061:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0062:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0063:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0068:
    lea .LS_5_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_006d:
    mov $4, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_006e:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0073:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0074:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0075:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_007a:
    lea .LS_6_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_007f:
    mov $4, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0080:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0085:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0086:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0087:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_008c:
    lea .LS_7_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0091:
    mov $3, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0092:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0097:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0098:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0099:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_009e:
    lea .LS_8_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00a3:
    mov $3, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00a4:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00a9:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00aa:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00ab:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00b0:
    lea .LS_9_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00b5:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00b6:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00bb:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00bc:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00bd:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00c2:
    lea .LS_10_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00c7:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00c8:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00cd:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00ce:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00cf:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_GetEnumerator__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00d4:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00d5:
    jmp .Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0221
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00da:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00db:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_Current__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00e0:
    mov -72(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00e2:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00e3:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00e8:
    lea .LS_11_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00ed:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00f2:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00f4:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00f9:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00fe:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00ff:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0104:
    lea .LS_12_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0109:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_010e:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0110:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0115:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0116:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_011e
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0118:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0119:
    lea .LN_13_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_011e:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0123:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0124:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0129:
    lea .LS_14_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_012e:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0133:
    lea .LN_15_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0138:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_013d:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_013e:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0143:
    lea .LS_16_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0148:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_014d:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_014f:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0154:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0155:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_015d
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0157:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0158:
    lea .LN_17_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_015d:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0162:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0163:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0168:
    lea .LS_18_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_016d:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0172:
    lea .LN_19_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0177:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_017c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_017d:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0182:
    lea .LS_20_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0187:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_018c:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_018e:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Description__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0193:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0194:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_019c
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0196:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0197:
    lea .LN_21_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_019c:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01a1:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01a2:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01a7:
    lea .LS_22_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01ac:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01b1:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01b3:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_Invite__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01b8:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01b9:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01c1
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01bb:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01bc:
    lea .LN_23_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01c1:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01c6:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01c7:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01cc:
    lea .LS_24_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01d1:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01d6:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01d8:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_MemberCount__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01dd:
    mov -80(%rbp), %rdi
    lea .LN_25_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rsi
    call shim_box
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01e2:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01e3:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01eb
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01e5:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01e6:
    lea .LN_26_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01eb:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01f0:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01f1:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01f6:
    lea .LS_27_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_01fb:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0200:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0202:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_Position__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0207:
    mov -80(%rbp), %rdi
    lea .LN_28_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rsi
    call shim_box
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_020c:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_020d:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0215
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_020f:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0210:
    lea .LN_29_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0215:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_021a:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_021b:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteNonQuery__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0220:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0221:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0222:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0227:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_00da
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_022c:
    jmp .Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0238
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0238:
    jmp .Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0244
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0244:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0245:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbTransaction_Commit__void
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_024a:
    jmp .Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_025f
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_025f:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_0260:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ServersTable_Write_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ServersTable_Write__gen, .-m_Skymu_Databases_DatabaseManager_ServersTable_Write__gen

.globl m_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor__ref
.type m_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor__ref, @function
m_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor_ref_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor_ref_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor__ref, .-m_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor__ref

.globl m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write__gen
.type m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write__gen, @function
m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write__gen:
    push %rbp
    mov %rsp, %rbp
    sub $192, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0001:
    mov -144(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0006:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_000b:
    mov -144(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_000c:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_000d:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_BeginTransaction__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0012:
    mov -144(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0013:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0014:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0019:
    mov -144(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_001a:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_001b:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0020:
    mov -144(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0021:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0022:
    mov -40(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0023:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_set_Transaction__ref
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0028:
    mov -48(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0029:
    lea .LS_1_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    mov $78, %esi
    call shim_string_new
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_002e:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0033:
    mov -48(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0034:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0039:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_003e:
    mov $3, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_003f:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0044:
    mov -144(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0045:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0046:
    lea .LS_3_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    mov $273, %esi
    call shim_string_new
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_004b:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0050:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0051:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0056:
    lea .LS_4_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_005b:
    mov $1, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_005c:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0061:
    mov -144(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0062:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0063:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0068:
    lea .LS_5_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_006d:
    mov $3, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_006e:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0073:
    mov -144(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0074:
    mov -56(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0075:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_007a:
    lea .LS_6_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_007f:
    mov $1, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0080:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0085:
    mov -144(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0086:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0087:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_GetEnumerator__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_008c:
    mov -144(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_008e:
    jmp .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01c4
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0093:
    mov -64(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0095:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_Current__void
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_009a:
    mov -144(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_009c:
    mov -48(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_009d:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00a2:
    lea .LS_7_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00a7:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00ac:
    mov -72(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00ae:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00b3:
    mov -152(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00b8:
    mov -152(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00b9:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00c1
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00bb:
    mov -144(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00bc:
    lea .LN_8_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00c1:
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00c6:
    mov -48(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00c7:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteScalar__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00cc:
    mov -144(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00ce:
    mov -80(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00d0:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01c4
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00d5:
    mov -80(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00d7:
    lea .LN_9_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00dc:
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01c4
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00e1:
    mov -80(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00e3:
    mov -144(%rbp), %rdi
    call m_System_Convert_ToInt64__ref
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00e8:
    mov -144(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00ea:
    xor %eax, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00eb:
    mov -144(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00ed:
    mov -72(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00ef:
    mov -144(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00f4:
    mov -152(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00f6:
    mov -104(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00f8:
    mov -152(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0105
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00fa:
    mov -104(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_00fc:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Group_get_Members__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0101:
    mov -152(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0103:
    jmp .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0130
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0105:
    mov -72(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0107:
    mov -152(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_010c:
    mov -160(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_010e:
    mov -112(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0110:
    mov -160(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0130
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0112:
    mov -112(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0114:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0119:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_011e
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_011b:
    xor %eax, %eax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_011c:
    jmp .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_012e
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_011e:
    mov $1, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_011f:
    mov -160(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0124:
    mov -160(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0125:
    mov $0, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0126:
    mov -112(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0128:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_012d:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_012e:
    mov -160(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0130:
    mov -96(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0132:
    mov -152(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01c4
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0137:
    mov -96(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0139:
    mov -152(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_013b:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_013c:
    mov -152(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_013e:
    jmp .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01b9
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0140:
    mov -120(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0142:
    mov -128(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0144:
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0145:
    mov -168(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0147:
    mov -136(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0149:
    mov -168(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01b3
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_014b:
    mov -136(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_014d:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0152:
    mov -168(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01b3
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0154:
    mov -56(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0155:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_015a:
    lea .LS_10_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_015f:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0164:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0166:
    mov -176(%rbp), %rdi
    lea .LN_11_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rsi
    call shim_box
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_016b:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0170:
    mov -56(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0171:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0176:
    lea .LS_12_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_017b:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0180:
    mov -136(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0182:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0187:
    mov -176(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_018c:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0191:
    mov -56(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0192:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0197:
    lea .LS_13_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_019c:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01a1:
    mov $0, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01a2:
    mov -176(%rbp), %rdi
    lea .LN_14_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen(%rip), %rsi
    call shim_box
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01a7:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01ac:
    mov -56(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01ad:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteNonQuery__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01b2:
    mov -168(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01b3:
    mov -128(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01b5:
    mov $1, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01b6:
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01b7:
    mov -168(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01b9:
    mov -128(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01bb:
    mov -120(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01bd:
    mov -160(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01be:
    mov -168(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01bf:
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0140
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01c4:
    mov -64(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01c6:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01cb:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0093
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01d0:
    jmp .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01de
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01de:
    jmp .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01ea
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01ea:
    jmp .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01f6
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01f6:
    mov -40(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01f7:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbTransaction_Commit__void
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_01fc:
    jmp .Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0211
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0211:
    mov $1, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_0212:
    mov -144(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write__gen, .-m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write__gen

.globl m_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor__void
.type m_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor__void, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor_void_0000:
    lea .LN_0_m_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Databases_DatabaseManager_MessagesTable_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor_void_0005:
    lea .LN_1_m_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor__void, .-m_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor__void

.globl m_Skymu_Databases_DatabaseManager_MessagesTable_c_ctor__void
.type m_Skymu_Databases_DatabaseManager_MessagesTable_c_ctor__void, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_MessagesTable_c_ctor__void, .-m_Skymu_Databases_DatabaseManager_MessagesTable_c_ctor__void

.globl m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_0__gen
.type m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_0__gen, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_0__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_0_gen_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_0_gen_0002:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Key__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_0_gen_0007:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_0_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_0__gen, .-m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_0__gen

.globl m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_1__gen
.type m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_1__gen, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_1__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_1_gen_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_1_gen_0002:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Value__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_1_gen_0007:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_ToArray__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_1_gen_000c:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_1_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_1__gen, .-m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_1__gen

.globl m_Skymu_Databases_DatabaseManager_MessagesTable_ctor__ref
.type m_Skymu_Databases_DatabaseManager_MessagesTable_ctor__ref, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ctor_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ctor_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ctor_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ctor_ref_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_MessagesTable_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ctor_ref_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_MessagesTable_ctor__ref, .-m_Skymu_Databases_DatabaseManager_MessagesTable_ctor__ref

.globl m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder__void
.type m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder__void, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void_0006:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void_000b:
    mov -24(%rbp), %rdi
    call m_System_IO_Path_GetDirectoryName__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void_0010:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void_0015:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void_001a:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void_001b:
    mov -24(%rbp), %rdi
    call m_System_IO_Directory_CreateDirectory__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void_0020:
    mov -24(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void_0021:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder__void, .-m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder__void

.globl m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments__gen_ref_i8_ref_ref
.type m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments__gen_ref_i8_ref_ref, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments__gen_ref_i8_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $288, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
    mov %r9, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0001:
    mov -208(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -208(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0006:
    mov -216(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0007:
    mov -72(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0008:
    mov -216(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_000d
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_000a:
    xor %eax, %eax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_000b:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_001f
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_000d:
    mov -72(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_000e:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0013:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0014:
    mov -216(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_001a
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0016:
    mov -208(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0017:
    xor %eax, %eax
    mov %rax, -208(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0018:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_001f
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_001a:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -208(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_001f:
    mov -216(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0020:
    mov -16(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0021:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0026:
    mov -216(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0027:
    mov -48(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0029:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_002e:
    mov -216(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_002f:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0030:
    mov -56(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0032:
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_set_Transaction__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0037:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0038:
    lea .LS_0_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $665, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_003d:
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0042:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0043:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0048:
    lea .LS_1_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_004d:
    mov $1, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_004e:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0053:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0054:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0055:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_005a:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_005f:
    mov $3, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0060:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0065:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0066:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0067:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_006c:
    lea .LS_3_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0071:
    mov $3, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0072:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0077:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0078:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0079:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_007e:
    lea .LS_4_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0083:
    mov $1, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0084:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0089:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_008a:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_008b:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0090:
    lea .LS_5_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0095:
    mov $1, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0096:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_009b:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_009c:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_009d:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00a2:
    lea .LS_6_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00a7:
    mov $3, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00a8:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00ad:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00ae:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00af:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00b4:
    lea .LS_7_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00b9:
    mov $3, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00ba:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00bf:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00c0:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00c1:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00c6:
    lea .LS_8_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00cb:
    mov $3, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00cc:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00d1:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00d2:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00d3:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00d8:
    lea .LS_9_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00dd:
    mov $1, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00de:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00e3:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00e4:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00e5:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00ea:
    lea .LS_10_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00ef:
    mov $1, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00f0:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00f5:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00f6:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00f7:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_00fc:
    lea .LS_11_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0101:
    mov $3, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0102:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0107:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0108:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0109:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_010e:
    lea .LS_12_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0113:
    mov $1, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0114:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0119:
    mov -216(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_011a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_011b:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_GetEnumerator__void
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0120:
    mov -216(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0122:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03e0
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0127:
    mov -96(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0129:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Current__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_012e:
    mov -216(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0133:
    mov -224(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0135:
    mov -104(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0137:
    mov -224(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03e0
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_013c:
    mov -104(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_013e:
    mov -224(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0143:
    mov -224(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03e0
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0148:
    mov -104(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_014a:
    mov -224(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Time__void
    movslq %eax, %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_014f:
    lea .LN_13_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -224(%rbp), %rsi
    mov %r12, %rdi
    call m_System_DateTimeOffset_ctor__v
    mov %r12, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0154:
    mov -224(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0156:
    lea -128(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0158:
    mov -224(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_ToUnixTimeSeconds__void
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_015d:
    mov -224(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_015f:
    mov $0, %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0160:
    mov -224(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0162:
    mov -104(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0164:
    mov -224(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0169:
    mov -224(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_016b:
    mov $0, %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_016c:
    mov -224(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_016e:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03d5
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0173:
    mov -136(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0175:
    mov -144(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0177:
    mov -248(%rbp), %rcx
    mov -240(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0178:
    mov -240(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_017a:
    mov -152(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_017c:
    mov -240(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0181
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_017e:
    mov $1, %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_017f:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_018b
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0181:
    mov -152(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0183:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0188:
    mov $0, %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0189:
    mov -248(%rbp), %rcx
    mov -240(%rbp), %rax
    cmp %ecx, %eax
    seta %al
    movzbl %al, %eax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_018b:
    mov -240(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01a6
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_018d:
    mov -152(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_018f:
    mov -240(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0194
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0191:
    mov $1, %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0192:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01a1
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0194:
    mov -152(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0196:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_019b:
    mov $1, %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_019c:
    mov -248(%rbp), %rcx
    mov -240(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_019e:
    mov $0, %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_019f:
    mov -248(%rbp), %rcx
    mov -240(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01a1:
    mov -240(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03cf
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01a6:
    mov -152(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01a8:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_File__void
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01ad:
    mov -240(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03cf
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01b2:
    mov -152(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01b4:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_File__void
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01b9:
    mov -240(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01ba:
    mov -248(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03cf
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01bf:
    mov -152(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01c1:
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Name__void
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01c6:
    mov -248(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01cb:
    mov -248(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01e5
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01cd:
    mov -152(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01cf:
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Name__void
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01d4:
    call m_System_IO_Path_GetInvalidFileNameChars__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01d9:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__arr
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01de:
    mov -248(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01e3:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01ea
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01e5:
    lea .LS_14_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01ea:
    mov -248(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01ec:
    mov -152(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01ee:
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_File__void
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01f3:
    mov -160(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01f5:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_ResolveExtension__arr_ref
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01fa:
    mov -248(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_01fc:
    lea .LS_15_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0201:
    mov -104(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0203:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0208:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_020a:
    mov -264(%rbp), %rdi
    lea .LN_16_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_020f:
    mov -168(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0211:
    mov -272(%rbp), %rcx
    mov -264(%rbp), %rdx
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    call m_System_String_Format__ref_ref_ref_ref
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0216:
    mov -248(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0218:
    mov -80(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0219:
    mov -176(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_021b:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0220:
    mov -248(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0222:
    mov -184(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0224:
    mov -152(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0226:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_File__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_022b:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    call m_System_IO_File_WriteAllBytes__ref_arr
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0230:
    mov -88(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0231:
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0236:
    lea .LS_17_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_023b:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0240:
    mov $1, %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0241:
    mov -256(%rbp), %rdi
    lea .LN_18_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0246:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_024b:
    mov -88(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_024c:
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0251:
    lea .LS_19_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0256:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_025b:
    mov -64(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_025c:
    mov -256(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0261:
    mov -256(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0262:
    mov -256(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_026a
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0264:
    mov -248(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0265:
    lea .LN_20_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_026a:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_026f:
    mov -88(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0270:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0275:
    lea .LS_21_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_027a:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_027f:
    mov -32(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0280:
    mov -248(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0285:
    mov -256(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0287:
    mov -192(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0289:
    mov -256(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0293
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_028b:
    mov -32(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_028c:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0291:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02a6
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0293:
    mov -192(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0295:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_029a:
    mov -256(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_029b:
    mov -256(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02a1
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_029d:
    mov -248(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_029e:
    xor %eax, %eax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_029f:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02a6
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02a1:
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02a6:
    mov -256(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02a7:
    mov -256(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02af
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02a9:
    mov -248(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02aa:
    lea .LN_22_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02af:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02b4:
    mov -88(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02b5:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02ba:
    lea .LS_23_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02bf:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02c4:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02c6:
    mov -248(%rbp), %rdi
    lea .LN_24_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02cb:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02d0:
    mov -88(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02d1:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02d6:
    lea .LS_25_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02db:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02e0:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02e2:
    mov -248(%rbp), %rdi
    lea .LN_26_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02e7:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02ec:
    mov -88(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02ed:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02f2:
    lea .LS_27_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02f7:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02fc:
    mov -184(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_02fe:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0303:
    mov -88(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0304:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0309:
    lea .LS_28_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_030e:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0313:
    mov -168(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0315:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_031a:
    mov -88(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_031b:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0320:
    lea .LS_29_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0325:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_032a:
    mov -152(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_032c:
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_File__void
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0331:
    mov -248(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0332:
    mov -256(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0333:
    mov -264(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0335:
    lea -200(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0337:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Int32_ToString__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_033c:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0341:
    mov -88(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0342:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0347:
    lea .LS_30_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_034c:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0351:
    mov -40(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0352:
    mov -264(%rbp), %rdi
    lea .LN_31_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0357:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_035c:
    mov -88(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_035d:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0362:
    lea .LS_32_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0367:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_036c:
    mov -104(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_036e:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0373:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0374:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_037c
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0376:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0377:
    lea .LN_33_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_037c:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0381:
    mov -88(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0382:
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0387:
    lea .LS_34_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_038c:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0391:
    mov -152(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0393:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Url__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0398:
    mov -256(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0399:
    mov -256(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03a1
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_039b:
    mov -248(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_039c:
    lea .LN_35_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03a1:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03a6:
    mov -88(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03a7:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03ac:
    lea .LS_36_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03b1:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03b6:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03b8:
    mov -248(%rbp), %rdi
    lea .LN_37_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03bd:
    mov -248(%rbp), %rsi
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03c2:
    mov -88(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03c3:
    mov -240(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteNonQuery__void
    movslq %eax, %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03c8:
    mov -240(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03c9:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03cb:
    mov $1, %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03cc:
    mov -248(%rbp), %rcx
    mov -240(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03cd:
    mov -240(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03cf:
    mov -144(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03d1:
    mov $1, %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03d2:
    mov -248(%rbp), %rcx
    mov -240(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03d3:
    mov -240(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03d5:
    mov -144(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03d7:
    mov -136(%rbp), %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03d9:
    mov -232(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03da:
    mov -240(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03db:
    mov -248(%rbp), %rcx
    mov -240(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0173
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03e0:
    mov -96(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03e2:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03e7:
    mov -216(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0127
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_03ec:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0404
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_0404:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments__gen_ref_i8_ref_ref, .-m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments__gen_ref_i8_ref_ref

.globl m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments__i8_ref
.type m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments__i8_ref, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments__i8_ref:
    push %rbp
    mov %rsp, %rbp
    sub $160, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0000:
    lea .LN_0_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_Attachment_ctor__void
    mov %r12, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0005:
    mov -120(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0007:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_000c:
    mov -120(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_000d:
    mov -40(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_000e:
    lea .LS_1_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    mov $185, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0013:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0018:
    mov -40(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0019:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_001e:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0023:
    mov $1, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0024:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0029:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_002a:
    mov -128(%rbp), %rdi
    lea .LN_3_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rsi
    call shim_box
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_002f:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0034:
    mov -40(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0035:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_ExecuteReader__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_003a:
    mov -120(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_003b:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00fe
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0040:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0041:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0042:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0047:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_005b
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0049:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_004a:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_004b:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetInt64__i4
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0050:
    mov -120(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0052:
    lea -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0054:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Int64_ToString__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0059:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_005c
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_005b:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_005c:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_005d:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_005e:
    mov $1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_005f:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0064:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_006f
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0066:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0067:
    mov $1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0068:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetString__i4
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_006d:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0070
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_006f:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0070:
    mov -120(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0072:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0073:
    mov $2, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0074:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0079:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0084
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_007b:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_007c:
    mov $2, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_007d:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetString__i4
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0082:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0085
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0084:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0085:
    mov -120(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0087:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0088:
    mov $3, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0089:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_IsDBNull__i4
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_008e:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0099
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0090:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0091:
    mov $3, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0092:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_GetString__i4
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0097:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_009a
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0099:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_009a:
    mov -120(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_009c:
    mov -56(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_009d:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00fe
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_009f:
    mov -64(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00a1:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00fe
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00a3:
    mov -64(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00a5:
    mov -120(%rbp), %rdi
    call m_System_IO_File_Exists__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00aa:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00fe
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00ac:
    mov -64(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00ae:
    mov -120(%rbp), %rdi
    call m_System_IO_File_ReadAllBytes__ref
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00b3:
    mov -120(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00b5:
    mov -80(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00b7:
    mov -120(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00bc:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00ce
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00be:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00c0:
    mov -72(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00c2:
    mov -80(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00c4:
    mov $1, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00c5:
    lea .LN_4_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -144(%rbp), %r8
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Attachment_ctor__arr_ref_ref_v
    mov %r12, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00ca:
    mov -120(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00cc:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00db
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00ce:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00d0:
    mov -72(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00d2:
    xor %eax, %eax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00d3:
    mov $0, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00d4:
    lea .LN_5_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -144(%rbp), %r8
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Attachment_ctor__arr_ref_ref_v
    mov %r12, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00d9:
    mov -120(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00db:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00dc:
    mov -56(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00dd:
    lea -104(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00df:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_TryGetValue__gen_gen
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00e4:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00f5
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00e6:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00e7:
    mov -56(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00e8:
    lea .LN_6_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_Attachment_ctor__void
    mov %r12, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00ed:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00ee:
    mov -136(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00f0:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_set_Item__gen_gen
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00f5:
    mov -104(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00f7:
    mov -96(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00f9:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_Add__gen
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00fe:
    mov -48(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_00ff:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbDataReader_Read__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0104:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0040
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0109:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_011f
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_011f:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0120:
    lea .LN_7_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0125:
    mov -128(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0126:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_013f
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0128:
    mov -120(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0129:
    lea .LN_8_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_012e:
    lea m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_0__gen(%rip), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0134:
    lea .LN_9_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__ref_v
    mov %r12, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0139:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_013a:
    lea .LN_10_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_global_slot
    mov -120(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_013f:
    lea .LN_11_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0144:
    mov -128(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0145:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_015e
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0147:
    mov -120(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0148:
    lea .LN_12_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_014d:
    lea m_Skymu_Databases_DatabaseManager_MessagesTable_c_ReadImageAttachments_b_4_1__gen(%rip), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0153:
    lea .LN_13_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Attachment_ctor__ref_v
    mov %r12, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0158:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0159:
    lea .LN_14_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref(%rip), %rdi
    call shim_global_slot
    mov -120(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_015e:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_Linq_Enumerable_ToDictionary_valuetype_System_Runtime_System_Collections_Generic_KeyValuePair_2_string_class_System_Collections_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_Attachment_string_class_Yggdrasil_Yggdrasil_Models_Attachment__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_0163:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments__i8_ref, .-m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments__i8_ref

.globl m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_ref
.type m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_ref, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Read_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Read_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Read_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Read_ref_ref_0003:
    lea -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Read_ref_ref_0005:
    mov -72(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Read_ref_ref_000b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Read_ref_ref_000c:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_i4_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Read_ref_ref_0011:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Read_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_ref, .-m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_ref

.globl m_Skymu_Databases_DatabaseManager_MessagesTable_Write__gen_ref_ref
.type m_Skymu_Databases_DatabaseManager_MessagesTable_Write__gen_ref_ref, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_Write__gen_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $320, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0000:
    mov -40(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0002:
    mov -264(%rbp), %rcx
    mov -256(%rbp), %rax
    cmp %rcx, %rax
    sete %al
    movzbl %al, %eax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0004:
    mov -256(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0005:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0006:
    mov -256(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_000b
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0008:
    mov -40(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0009:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0016
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_000c:
    mov -256(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0011:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0016:
    mov -256(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0017:
    mov $0, %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0018:
    mov -256(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0019:
    mov -264(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_001a:
    mov -56(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_001b:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0020:
    mov -264(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0022:
    mov -104(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0024:
    lea .LS_1_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $78, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0029:
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_002e:
    mov -104(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0030:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0035:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_003a:
    mov $3, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_003b:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0040:
    mov -32(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0041:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0046:
    mov -272(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_004b:
    mov -272(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_004c:
    mov -272(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0054
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_004e:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_004f:
    lea .LN_3_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0054:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0059:
    mov -104(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_005b:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteScalar__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0060:
    mov -256(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0062:
    mov -112(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0064:
    mov -256(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0077
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0066:
    mov -112(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0068:
    lea .LN_4_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_006d:
    mov -264(%rbp), %rcx
    mov -256(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0077
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_006f:
    mov -112(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0071:
    mov -256(%rbp), %rdi
    call m_System_Convert_ToInt64__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0076:
    mov -256(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0077:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0085
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0085:
    xor %eax, %eax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0086:
    mov -256(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0087:
    mov -32(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0088:
    mov -256(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_008d:
    mov -264(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_008f:
    mov -80(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0091:
    mov -264(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00a7
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0093:
    mov -80(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0095:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_009a:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_009b:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00a1
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_009d:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_009e:
    xor %eax, %eax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_009f:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00a6
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00a1:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00a6:
    mov -256(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00a7:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00a8:
    mov -264(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00aa:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00ac:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00b1
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00ae:
    xor %eax, %eax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00af:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00b7
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00b1:
    mov -56(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00b2:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_BeginTransaction__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00b7:
    mov -264(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00b9:
    mov -56(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00ba:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00bf:
    mov -264(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00c1:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00c3:
    mov -264(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00ce
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00c5:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00c7:
    mov -96(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00c9:
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_set_Transaction__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00ce:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00d0:
    lea .LS_5_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $1507, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00d5:
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00da:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00dc:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00e1:
    lea .LS_6_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00e6:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00e7:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00ec:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00ed:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00ef:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00f4:
    lea .LS_7_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00f9:
    mov $3, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00fa:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_00ff:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0100:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0102:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0107:
    lea .LS_8_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_010c:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_010d:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0112:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0113:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0115:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_011a:
    lea .LS_9_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_011f:
    mov $3, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0120:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0125:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0126:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0128:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_012d:
    lea .LS_10_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0132:
    mov $3, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0133:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0138:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0139:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_013b:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0140:
    lea .LS_11_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0145:
    mov $3, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0146:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_014b:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_014c:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_014e:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0153:
    lea .LS_12_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0158:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0159:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_015e:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_015f:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0161:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0166:
    lea .LS_13_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_016b:
    mov $3, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_016c:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0171:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0172:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0174:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0179:
    lea .LS_14_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_017e:
    mov $3, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_017f:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0184:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0185:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0187:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_018c:
    lea .LS_15_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0191:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0192:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0197:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0198:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_019a:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_019f:
    lea .LS_16_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01a4:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01a5:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01aa:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01ab:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01ad:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01b2:
    lea .LS_17_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01b7:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01b8:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01bd:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01be:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01c0:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01c5:
    lea .LS_18_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01ca:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01cb:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01d0:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01d1:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01d3:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01d8:
    lea .LS_19_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01dd:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01de:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01e3:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01e4:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01e6:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01eb:
    lea .LS_20_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01f0:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01f1:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01f6:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01f7:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01f8:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_GetEnumerator__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01fd:
    mov -264(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_01ff:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_098a
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0204:
    mov -128(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0206:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Current__void
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_020b:
    mov -264(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_020d:
    mov -136(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_020f:
    mov -264(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0214:
    mov -272(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0216:
    mov -144(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0218:
    mov -272(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04db
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_021d:
    mov -144(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_021f:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Time__void
    movslq %eax, %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0224:
    lea .LN_21_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -272(%rbp), %rsi
    mov %r12, %rdi
    call m_System_DateTimeOffset_ctor__v
    mov %r12, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0229:
    mov -272(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_022b:
    lea -176(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_022d:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_ToUnixTimeSeconds__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0232:
    mov -272(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0234:
    mov -144(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0236:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Time__void
    movslq %eax, %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_023b:
    lea .LN_22_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -272(%rbp), %rsi
    mov %r12, %rdi
    call m_System_DateTimeOffset_ctor__v
    mov %r12, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0240:
    mov -272(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0242:
    lea -176(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0244:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_ToUnixTimeMilliseconds__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0249:
    mov -272(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_024b:
    mov -144(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_024d:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0252:
    mov -272(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0278
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0254:
    mov -144(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0256:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_025b:
    mov -272(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_025c:
    mov -280(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0278
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_025e:
    mov -144(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0260:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0265:
    mov $0, %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0266:
    mov -288(%rbp), %rcx
    mov -280(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0267:
    mov -280(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0268:
    mov -280(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_026e
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_026a:
    mov -272(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_026b:
    xor %eax, %eax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_026c:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0273
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_026e:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_File__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0273:
    xor %eax, %eax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0274:
    mov -280(%rbp), %rcx
    mov -272(%rbp), %rax
    cmp %rcx, %rax
    seta %al
    movzbl %al, %eax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0276:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0279
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0278:
    mov $0, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0279:
    mov -280(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_027b:
    mov -144(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_027d:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_ParentMessage__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0282:
    mov -272(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_029d
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0284:
    mov -16(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0285:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0286:
    mov -280(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_028b:
    mov -280(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_028c:
    mov $0, %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_028d:
    mov -144(%rbp), %rax
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_028f:
    mov -296(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_ParentMessage__void
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0294:
    mov -296(%rbp), %rdx
    mov -288(%rbp), %rcx
    mov -280(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0295:
    mov -32(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0296:
    mov -56(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0297:
    mov -288(%rbp), %rcx
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_MessagesTable_Write__gen_ref_ref
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_029c:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_029d:
    mov -120(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_029f:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02a4:
    lea .LS_23_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02a9:
    mov -280(%rbp), %rsi
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02ae:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02af:
    mov -280(%rbp), %rdi
    lea .LN_24_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02b4:
    mov -280(%rbp), %rsi
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02b9:
    mov -120(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02bb:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02c0:
    lea .LS_25_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02c5:
    mov -280(%rbp), %rsi
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02ca:
    lea .LN_26_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02cf:
    mov -280(%rbp), %rsi
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02d4:
    mov -120(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02d6:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02db:
    lea .LS_27_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02e0:
    mov -280(%rbp), %rsi
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02e5:
    mov -152(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02e7:
    mov -280(%rbp), %rdi
    lea .LN_28_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02ec:
    mov -280(%rbp), %rsi
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02f1:
    mov -120(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02f3:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02f8:
    lea .LS_29_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_02fd:
    mov -280(%rbp), %rsi
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0302:
    mov -144(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0304:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0309:
    mov -280(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_030a:
    mov -280(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0310
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_030c:
    mov -272(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_030d:
    xor %eax, %eax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_030e:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0315
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0310:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0315:
    mov -272(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_031a:
    mov -272(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_031b:
    mov -272(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0323
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_031d:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_031e:
    lea .LN_30_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0323:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0328:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_032a:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_032f:
    lea .LS_31_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0334:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0339:
    mov -144(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_033b:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0340:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0341:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0347
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0343:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0344:
    xor %eax, %eax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0345:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_034c
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0347:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_034c:
    mov -256(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_034d:
    mov -256(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0355
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_034f:
    mov -248(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0350:
    lea .LN_32_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0355:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_035a:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_035c:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0361:
    lea .LS_33_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0366:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_036b:
    mov -144(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_036d:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0372:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0373:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0379
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0375:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0376:
    xor %eax, %eax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0377:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_037e
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0379:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_037e:
    mov -256(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_037f:
    mov -256(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0387
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0381:
    mov -248(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0382:
    lea .LN_34_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0387:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_038c:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_038e:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0393:
    lea .LS_35_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0398:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_039d:
    mov -168(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_039f:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03a4
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03a1:
    mov $3, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03a2:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03a5
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03a4:
    mov $7, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03a5:
    mov -264(%rbp), %rdi
    lea .LN_36_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03aa:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03af:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03b1:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03b6:
    lea .LS_37_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03bb:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03c0:
    mov -144(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03c2:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03c7:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03c8:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03d0
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03ca:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03cb:
    lea .LN_38_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03d0:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03d5:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03d7:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03dc:
    lea .LS_39_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03e1:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03e6:
    mov -72(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03e7:
    mov -264(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03ec:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03ed:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03f5
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03ef:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03f0:
    lea .LN_40_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03f5:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03fa:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_03fc:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0401:
    lea .LS_41_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0406:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_040b:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_040c:
    mov -264(%rbp), %rdi
    lea .LN_42_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0411:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0416:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0418:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_041d:
    lea .LS_43_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0422:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0427:
    mov -168(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0429:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_042f
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_042b:
    mov $61, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_042d:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0431
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_042f:
    mov $68, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0431:
    mov -264(%rbp), %rdi
    lea .LN_44_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0436:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_043b:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_043d:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0442:
    lea .LS_45_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0447:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_044c:
    mov -144(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_044e:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0453:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0454:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_045c
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0456:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0457:
    lea .LN_46_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_045c:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0461:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0463:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0468:
    lea .LS_47_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_046d:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0472:
    mov -144(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0474:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0479:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_047a:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0482
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_047c:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_047d:
    lea .LN_48_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0482:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0487:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0489:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_048e:
    lea .LS_49_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0493:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0498:
    mov -144(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_049a:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_ParentMessage__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_049f:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04a0:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04a6
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04a2:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04a3:
    xor %eax, %eax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04a4:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04ab
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04a6:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04ab:
    mov -256(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04ac:
    mov -256(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04b4
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04ae:
    mov -248(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04af:
    lea .LN_50_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04b4:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04b9:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04bb:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04c0:
    lea .LS_51_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04c5:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04ca:
    mov -160(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04cc:
    mov -264(%rbp), %rdi
    lea .LN_52_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04d1:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04d6:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0982
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04db:
    mov -136(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04dd:
    mov -272(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04e2:
    mov -280(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04e4:
    mov -184(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04e6:
    mov -280(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0727
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04eb:
    mov -184(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04ed:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Time__void
    movslq %eax, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04f2:
    lea .LN_53_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -280(%rbp), %rsi
    mov %r12, %rdi
    call m_System_DateTimeOffset_ctor__v
    mov %r12, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04f7:
    mov -280(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04f9:
    lea -176(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_04fb:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_ToUnixTimeSeconds__void
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0500:
    mov -280(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0502:
    mov -184(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0504:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Time__void
    movslq %eax, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0509:
    lea .LN_54_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -280(%rbp), %rsi
    mov %r12, %rdi
    call m_System_DateTimeOffset_ctor__v
    mov %r12, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_050e:
    mov -280(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0510:
    lea -176(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0512:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_ToUnixTimeMilliseconds__void
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0517:
    mov -280(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0519:
    mov -120(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_051b:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0520:
    lea .LS_55_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0525:
    mov -288(%rbp), %rsi
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_052a:
    mov $1, %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_052b:
    mov -288(%rbp), %rdi
    lea .LN_56_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0530:
    mov -288(%rbp), %rsi
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0535:
    mov -120(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0537:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_053c:
    lea .LS_57_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0541:
    mov -288(%rbp), %rsi
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0546:
    lea .LN_58_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_054b:
    mov -288(%rbp), %rsi
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0550:
    mov -120(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0552:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0557:
    lea .LS_59_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_055c:
    mov -288(%rbp), %rsi
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0561:
    mov -192(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0563:
    mov -288(%rbp), %rdi
    lea .LN_60_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0568:
    mov -288(%rbp), %rsi
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_056d:
    mov -120(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_056f:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0574:
    lea .LS_61_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0579:
    mov -288(%rbp), %rsi
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_057e:
    mov -184(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0580:
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallStartedNotice_get_StartedBy__void
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0585:
    mov -288(%rbp), %rax
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0586:
    mov -288(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_058c
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0588:
    mov -280(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0589:
    xor %eax, %eax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_058a:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0591
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_058c:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0591:
    mov -280(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0596:
    mov -280(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0597:
    mov -280(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_059f
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0599:
    mov -272(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_059a:
    lea .LN_62_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_059f:
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05a4:
    mov -120(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05a6:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05ab:
    lea .LS_63_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05b0:
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05b5:
    mov -184(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05b7:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallStartedNotice_get_StartedBy__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05bc:
    mov -272(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05bd:
    mov -272(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05c3
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05bf:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05c0:
    xor %eax, %eax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05c1:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05c8
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05c3:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05c8:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05c9:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05d1
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05cb:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05cc:
    lea .LN_64_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05d1:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05d6:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05d8:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05dd:
    lea .LS_65_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05e2:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05e7:
    mov -184(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05e9:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallStartedNotice_get_StartedBy__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05ee:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05ef:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05f5
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05f1:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05f2:
    xor %eax, %eax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05f3:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05fa
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05f5:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05fa:
    mov -256(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05fb:
    mov -256(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0603
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05fd:
    mov -248(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_05fe:
    lea .LN_66_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0603:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0608:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_060a:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_060f:
    lea .LS_67_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0614:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0619:
    mov $18, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_061b:
    mov -264(%rbp), %rdi
    lea .LN_68_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0620:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0625:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0627:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_062c:
    lea .LS_69_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0631:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0636:
    lea .LN_70_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_063b:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0640:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0642:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0647:
    lea .LS_71_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_064c:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0651:
    mov -72(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0652:
    mov -264(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0657:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0658:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0660
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_065a:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_065b:
    lea .LN_72_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0660:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0665:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0667:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_066c:
    lea .LS_73_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0671:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0676:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0677:
    mov -264(%rbp), %rdi
    lea .LN_74_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_067c:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0681:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0683:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0688:
    lea .LS_75_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_068d:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0692:
    mov $30, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0694:
    mov -264(%rbp), %rdi
    lea .LN_76_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0699:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_069e:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06a0:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06a5:
    lea .LS_77_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06aa:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06af:
    mov -136(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06b1:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06b6:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06b7:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06bf
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06b9:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06ba:
    lea .LN_78_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06bf:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06c4:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06c6:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06cb:
    lea .LS_79_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06d0:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06d5:
    mov -136(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06d7:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06dc:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06dd:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06e5
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06df:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06e0:
    lea .LN_80_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06e5:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06ea:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06ec:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06f1:
    lea .LS_81_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06f6:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_06fb:
    lea .LN_82_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0700:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0705:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0707:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_070c:
    lea .LS_83_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0711:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0716:
    mov -200(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0718:
    mov -264(%rbp), %rdi
    lea .LN_84_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_071d:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0722:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0982
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0727:
    mov -136(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0729:
    mov -280(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_072e:
    mov -288(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0730:
    mov -208(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0732:
    mov -288(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_098a
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0737:
    mov -208(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0739:
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Time__void
    movslq %eax, %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_073e:
    lea .LN_85_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -288(%rbp), %rsi
    mov %r12, %rdi
    call m_System_DateTimeOffset_ctor__v
    mov %r12, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0743:
    mov -288(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0745:
    lea -176(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0747:
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_ToUnixTimeSeconds__void
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_074c:
    mov -288(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_074e:
    mov -208(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0750:
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Time__void
    movslq %eax, %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0755:
    lea .LN_86_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -288(%rbp), %rsi
    mov %r12, %rdi
    call m_System_DateTimeOffset_ctor__v
    mov %r12, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_075a:
    mov -288(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_075c:
    lea -176(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_075e:
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_ToUnixTimeMilliseconds__void
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0763:
    mov -288(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0765:
    mov -120(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0767:
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_076c:
    lea .LS_87_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0771:
    mov -296(%rbp), %rsi
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0776:
    mov $1, %rax
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0777:
    mov -296(%rbp), %rdi
    lea .LN_88_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_077c:
    mov -296(%rbp), %rsi
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0781:
    mov -120(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0783:
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0788:
    lea .LS_89_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_078d:
    mov -296(%rbp), %rsi
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0792:
    lea .LN_90_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0797:
    mov -296(%rbp), %rsi
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_079c:
    mov -120(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_079e:
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07a3:
    lea .LS_91_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07a8:
    mov -296(%rbp), %rsi
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07ad:
    mov -216(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07af:
    mov -296(%rbp), %rdi
    lea .LN_92_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07b4:
    mov -296(%rbp), %rsi
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07b9:
    mov -120(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07bb:
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07c0:
    lea .LS_93_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07c5:
    mov -296(%rbp), %rsi
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07ca:
    mov -208(%rbp), %rax
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07cc:
    mov -296(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallEndedNotice_get_StartedBy__void
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07d1:
    mov -296(%rbp), %rax
    mov %rax, -304(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07d2:
    mov -296(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07d8
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07d4:
    mov -288(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07d5:
    xor %eax, %eax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07d6:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07dd
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07d8:
    mov -288(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07dd:
    mov -288(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07e2:
    mov -288(%rbp), %rax
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07e3:
    mov -288(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07eb
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07e5:
    mov -280(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07e6:
    lea .LN_94_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07eb:
    mov -280(%rbp), %rsi
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07f0:
    mov -120(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07f2:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07f7:
    lea .LS_95_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_07fc:
    mov -280(%rbp), %rsi
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0801:
    mov -208(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0803:
    mov -280(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallEndedNotice_get_StartedBy__void
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0808:
    mov -280(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0809:
    mov -280(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_080f
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_080b:
    mov -272(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_080c:
    xor %eax, %eax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_080d:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0814
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_080f:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0814:
    mov -272(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0815:
    mov -272(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_081d
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0817:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0818:
    lea .LN_96_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_081d:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0822:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0824:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0829:
    lea .LS_97_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_082e:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0833:
    mov -208(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0835:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallEndedNotice_get_StartedBy__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_083a:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_083b:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0841
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_083d:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_083e:
    xor %eax, %eax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_083f:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0846
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0841:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0846:
    mov -256(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0847:
    mov -256(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_084f
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0849:
    mov -248(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_084a:
    lea .LN_98_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_084f:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0854:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0856:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_085b:
    lea .LS_99_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0860:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0865:
    mov $18, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0867:
    mov -264(%rbp), %rdi
    lea .LN_100_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_086c:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0871:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0873:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0878:
    lea .LS_101_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_087d:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0882:
    mov -208(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0884:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallEndedNotice_get_Duration__void
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0889:
    mov -264(%rbp), %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_088b:
    lea -232(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_088d:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_TimeSpan_get_TotalSeconds__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0892:
    mov -264(%rbp), %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0894:
    lea -240(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0896:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Double_ToString__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_089b:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08a0:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08a2:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08a7:
    lea .LS_102_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08ac:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08b1:
    mov -72(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08b2:
    mov -264(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08b7:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08b8:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08c0
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08ba:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08bb:
    lea .LN_103_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08c0:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08c5:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08c7:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08cc:
    lea .LS_104_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08d1:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08d6:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08d7:
    mov -264(%rbp), %rdi
    lea .LN_105_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08dc:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08e1:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08e3:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08e8:
    lea .LS_106_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08ed:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08f2:
    mov $39, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08f4:
    mov -264(%rbp), %rdi
    lea .LN_107_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08f9:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_08fe:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0900:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0905:
    lea .LS_108_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_090a:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_090f:
    mov -136(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0911:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0916:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0917:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_091f
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0919:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_091a:
    lea .LN_109_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_091f:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0924:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0926:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_092b:
    lea .LS_110_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0930:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0935:
    mov -136(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0937:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_093c:
    mov -264(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_093d:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0945
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_093f:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0940:
    lea .LN_111_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0945:
    mov -256(%rbp), %rsi
    mov -248(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_094a:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_094c:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0951:
    lea .LS_112_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0956:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_095b:
    lea .LN_113_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0960:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0965:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0967:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_096c:
    lea .LS_114_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0971:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_get_Item__ref
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0976:
    mov -224(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0978:
    mov -264(%rbp), %rdi
    lea .LN_115_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_097d:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0982:
    mov -120(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0984:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteNonQuery__void
    movslq %eax, %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0989:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_098a:
    mov -128(%rbp), %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_098c:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0991:
    mov -264(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0204
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0996:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09a4
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09a4:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09b2
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09b2:
    mov -16(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09b3:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09b4:
    mov -32(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09b5:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -288(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09b6:
    mov -56(%rbp), %rax
    mov %rax, -296(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09b7:
    mov -96(%rbp), %rax
    mov %rax, -304(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09b9:
    mov -304(%rbp), %r9
    mov -296(%rbp), %r8
    mov -288(%rbp), %rcx
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments__gen_ref_i8_ref_ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09be:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09c0:
    mov -264(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a75
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09c5:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09c6:
    mov -264(%rbp), %rdi
    call m_System_Linq_Enumerable_Any_class_Yggdrasil_Yggdrasil_Models_ConversationItem__gen
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09cb:
    mov -264(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a75
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09d0:
    mov -56(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09d1:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09d6:
    mov -264(%rbp), %rax
    mov %rax, -248(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09d8:
    mov -248(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09da:
    mov -96(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09dc:
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_set_Transaction__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09e1:
    mov -248(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09e3:
    lea .LS_116_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $334, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09e8:
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09ed:
    mov -248(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09ef:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09f4:
    lea .LS_117_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09f9:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09fa:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_09ff:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a00:
    mov -272(%rbp), %rdi
    lea .LN_118_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a05:
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a0a:
    mov -248(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a0c:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a11:
    lea .LS_119_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a16:
    mov $1, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a17:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a1c:
    call m_System_DateTimeOffset_get_UtcNow__void
    movslq %eax, %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a21:
    mov -272(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a23:
    lea -176(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a25:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTimeOffset_ToUnixTimeSeconds__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a2a:
    mov -272(%rbp), %rdi
    lea .LN_120_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a2f:
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a34:
    mov -248(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a36:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteCommand_get_Parameters__void
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a3b:
    lea .LS_121_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a40:
    mov $3, %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a41:
    mov -280(%rbp), %rdx
    mov -272(%rbp), %rsi
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteParameterCollection_Add__ref_v
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a46:
    mov -32(%rbp), %rax
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a47:
    mov -272(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a4c:
    mov -272(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
    mov %rax, -272(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a51:
    mov -272(%rbp), %rax
    mov %rax, -280(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a52:
    mov -272(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a5a
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a54:
    mov -264(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a55:
    lea .LN_122_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a5a:
    mov -264(%rbp), %rsi
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbParameter_set_Value__ref
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a5f:
    mov -248(%rbp), %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a61:
    mov -256(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteNonQuery__void
    movslq %eax, %rax
    mov %rax, -256(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a66:
    mov -256(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a67:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a75
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a75:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a77:
    mov -264(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a80
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a79:
    mov -96(%rbp), %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a7b:
    mov -264(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbTransaction_Commit__void
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a80:
    jmp .Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a9e
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a9e:
    mov $1, %rax
    mov %rax, -264(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_0a9f:
    mov -264(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_MessagesTable_Write__gen_ref_ref, .-m_Skymu_Databases_DatabaseManager_MessagesTable_Write__gen_ref_ref

.globl m_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow__ref_ref
.type m_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow__ref_ref, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_0002:
    mov -48(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_0007:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_0008:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_0009:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_000a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_000b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_000c:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_MessagesTable_Write__gen_ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_0012:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow__ref_ref, .-m_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow__ref_ref

.globl m_Skymu_Databases_DatabaseManager_c_cctor__void
.type m_Skymu_Databases_DatabaseManager_c_cctor__void, @function
m_Skymu_Databases_DatabaseManager_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_cctor_void_0000:
    lea .LN_0_m_Skymu_Databases_DatabaseManager_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Databases_DatabaseManager_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_cctor_void_0005:
    lea .LN_1_m_Skymu_Databases_DatabaseManager_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_c_cctor__void, .-m_Skymu_Databases_DatabaseManager_c_cctor__void

.globl m_Skymu_Databases_DatabaseManager_c_ctor__void
.type m_Skymu_Databases_DatabaseManager_c_ctor__void, @function
m_Skymu_Databases_DatabaseManager_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Databases_DatabaseManager_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_c_ctor__void, .-m_Skymu_Databases_DatabaseManager_c_ctor__void

.globl m_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0__void
.type m_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0__void, @function
m_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0_void_0000:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0_void_0001:
    lea .LN_0_m_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_Pages_Updater_ctor__b
    mov %r12, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0_void_0006:
    mov -24(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0_void_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0__void, .-m_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0__void

.globl m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_ctor__void
.type m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_ctor__void, @function
m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_ctor__void, .-m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_ctor__void

.globl m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1__void
.type m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1__void, @function
m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void_0001:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void_0002:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void_0008:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void_000d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1__void, .-m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1__void

.globl m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_ctor__void
.type m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_ctor__void, @function
m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_ctor__void, .-m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_ctor__void

.globl m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0__c
.type m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0__c, @function
m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0__c:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Linq_Enumerable_Contains_char__gen_gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_000c:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_0010
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_000f:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_0010:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_0011:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_0016:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_0017:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_get_Chars__i4
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_001c:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0__c, .-m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0__c

.globl m_Skymu_Databases_DatabaseManager_get_Accounts__void
.type m_Skymu_Databases_DatabaseManager_get_Accounts__void, @function
m_Skymu_Databases_DatabaseManager_get_Accounts__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Accounts_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Accounts_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_get_Accounts_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Accounts_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_get_Accounts_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_get_Accounts__void, .-m_Skymu_Databases_DatabaseManager_get_Accounts__void

.globl m_Skymu_Databases_DatabaseManager_set_Accounts__ref
.type m_Skymu_Databases_DatabaseManager_set_Accounts__ref, @function
m_Skymu_Databases_DatabaseManager_set_Accounts__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Accounts_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Accounts_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Accounts_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_set_Accounts_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_set_Accounts_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_set_Accounts_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_set_Accounts__ref, .-m_Skymu_Databases_DatabaseManager_set_Accounts__ref

.globl m_Skymu_Databases_DatabaseManager_get_Contacts__void
.type m_Skymu_Databases_DatabaseManager_get_Contacts__void, @function
m_Skymu_Databases_DatabaseManager_get_Contacts__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Contacts_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Contacts_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_get_Contacts_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Contacts_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_get_Contacts_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_get_Contacts__void, .-m_Skymu_Databases_DatabaseManager_get_Contacts__void

.globl m_Skymu_Databases_DatabaseManager_set_Contacts__ref
.type m_Skymu_Databases_DatabaseManager_set_Contacts__ref, @function
m_Skymu_Databases_DatabaseManager_set_Contacts__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Contacts_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Contacts_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Contacts_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_set_Contacts_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_set_Contacts_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_set_Contacts_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_set_Contacts__ref, .-m_Skymu_Databases_DatabaseManager_set_Contacts__ref

.globl m_Skymu_Databases_DatabaseManager_get_Conversations__void
.type m_Skymu_Databases_DatabaseManager_get_Conversations__void, @function
m_Skymu_Databases_DatabaseManager_get_Conversations__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Conversations_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Conversations_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_get_Conversations_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Conversations_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_get_Conversations_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_get_Conversations__void, .-m_Skymu_Databases_DatabaseManager_get_Conversations__void

.globl m_Skymu_Databases_DatabaseManager_set_Conversations__ref
.type m_Skymu_Databases_DatabaseManager_set_Conversations__ref, @function
m_Skymu_Databases_DatabaseManager_set_Conversations__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Conversations_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Conversations_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Conversations_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_set_Conversations_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_set_Conversations_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_set_Conversations_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_set_Conversations__ref, .-m_Skymu_Databases_DatabaseManager_set_Conversations__ref

.globl m_Skymu_Databases_DatabaseManager_get_Participants__void
.type m_Skymu_Databases_DatabaseManager_get_Participants__void, @function
m_Skymu_Databases_DatabaseManager_get_Participants__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Participants_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Participants_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_get_Participants_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Participants_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_get_Participants_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_get_Participants__void, .-m_Skymu_Databases_DatabaseManager_get_Participants__void

.globl m_Skymu_Databases_DatabaseManager_set_Participants__ref
.type m_Skymu_Databases_DatabaseManager_set_Participants__ref, @function
m_Skymu_Databases_DatabaseManager_set_Participants__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Participants_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Participants_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Participants_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_set_Participants_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_set_Participants_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_set_Participants_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_set_Participants__ref, .-m_Skymu_Databases_DatabaseManager_set_Participants__ref

.globl m_Skymu_Databases_DatabaseManager_get_Messages__void
.type m_Skymu_Databases_DatabaseManager_get_Messages__void, @function
m_Skymu_Databases_DatabaseManager_get_Messages__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Messages_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Messages_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_get_Messages_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Messages_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_get_Messages_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_get_Messages__void, .-m_Skymu_Databases_DatabaseManager_get_Messages__void

.globl m_Skymu_Databases_DatabaseManager_set_Messages__ref
.type m_Skymu_Databases_DatabaseManager_set_Messages__ref, @function
m_Skymu_Databases_DatabaseManager_set_Messages__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Messages_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Messages_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Messages_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_set_Messages_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_set_Messages_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_set_Messages_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_set_Messages__ref, .-m_Skymu_Databases_DatabaseManager_set_Messages__ref

.globl m_Skymu_Databases_DatabaseManager_get_Servers__void
.type m_Skymu_Databases_DatabaseManager_get_Servers__void, @function
m_Skymu_Databases_DatabaseManager_get_Servers__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Servers_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Servers_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_get_Servers_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_get_Servers_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_get_Servers_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_get_Servers__void, .-m_Skymu_Databases_DatabaseManager_get_Servers__void

.globl m_Skymu_Databases_DatabaseManager_set_Servers__ref
.type m_Skymu_Databases_DatabaseManager_set_Servers__ref, @function
m_Skymu_Databases_DatabaseManager_set_Servers__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Servers_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Servers_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_set_Servers_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_set_Servers_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_set_Servers_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_set_Servers_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_set_Servers__ref, .-m_Skymu_Databases_DatabaseManager_set_Servers__ref

.globl m_Skymu_Databases_DatabaseManager_ctor__ref_ref
.type m_Skymu_Databases_DatabaseManager_ctor__ref_ref, @function
m_Skymu_Databases_DatabaseManager_ctor__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0001:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0007:
    mov -72(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_000c:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_003c
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_000e:
    mov $26, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0010:
    mov -72(%rbp), %rdi
    call m_System_Environment_GetFolderPath__v
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0015:
    lea .LS_0_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_001a:
    lea .LN_1_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_001f:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_InternalName__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0024:
    mov -24(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0025:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_002a:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_002f:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_SanitizeFolderName__ref_ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0034:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref_ref_ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0039:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_003a:
    jmp .Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_003e
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_003c:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_003d:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_003e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_003f:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0040:
    lea .LS_3_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0045:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_004a:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_4_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_004f:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0050:
    lea .LS_5_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0055:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_005a:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_005b:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_005c:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_005d:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_005e:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_EnsureDatabaseVersion__ref_ref
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0063:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0064:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0065:
    lea .LN_6_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Databases_DatabaseManager_AccountsTable_ctor__ref
    mov %r12, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_006a:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_set_Accounts__ref
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_006f:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0070:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0071:
    lea .LN_7_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Databases_DatabaseManager_ContactsTable_ctor__ref
    mov %r12, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0076:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_set_Contacts__ref
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_007b:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_007c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_007d:
    lea .LN_8_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Databases_DatabaseManager_ConversationsTable_ctor__ref
    mov %r12, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0082:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_set_Conversations__ref
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0087:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0088:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0089:
    lea .LN_9_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor__ref
    mov %r12, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_008e:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_set_Participants__ref
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0093:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0094:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_0095:
    lea .LN_10_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Databases_DatabaseManager_MessagesTable_ctor__ref
    mov %r12, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_009a:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_set_Messages__ref
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_009f:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00a0:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00a1:
    lea .LN_11_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Databases_DatabaseManager_ServersTable_ctor__ref
    mov %r12, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00a6:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_set_Servers__ref
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00ab:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00ac:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_CreateConnection__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00b1:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00b2:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00b3:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00b8:
    mov -72(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00b9:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00ba:
    lea .LS_12_m_Skymu_Databases_DatabaseManager_ctor_ref_ref(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00bf:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00c4:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00c5:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteNonQuery__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00ca:
    mov -72(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00cb:
    jmp .Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00d7
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00d7:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00d8:
    mov -72(%rbp), %rdi
    call m_Skymu_Databases_DatabaseManager_EnsureTablesInternal__ref
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00dd:
    jmp .Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00e9
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_00e9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ctor_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ctor__ref_ref, .-m_Skymu_Databases_DatabaseManager_ctor__ref_ref

.globl m_Skymu_Databases_DatabaseManager_SanitizeFolderName__ref_ref
.type m_Skymu_Databases_DatabaseManager_SanitizeFolderName__ref_ref, @function
m_Skymu_Databases_DatabaseManager_SanitizeFolderName__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0000:
    lea .LN_0_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_000e:
    mov -48(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0013:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_001b
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0015:
    lea .LS_2_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_001a:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_001b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_001c:
    call m_System_IO_Path_GetInvalidFileNameChars__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0021:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0026:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0027:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0028:
    lea m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0__c(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_002e:
    lea .LN_4_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_char_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0033:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Linq_Enumerable_Select_char_char__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0038:
    mov -48(%rbp), %rdi
    call m_System_String_Concat_char__gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_003d:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_003e:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_003f:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0040:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0045:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0046:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0047:
    mov $32, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0049:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_004a:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_004b:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_004c:
    mov $46, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_004e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_004f:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_TrimEnd__arr
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0054:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0055:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0056:
    mov -48(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_005b:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0063
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_005d:
    lea .LS_5_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0062:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0063:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_0064:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_SanitizeFolderName__ref_ref, .-m_Skymu_Databases_DatabaseManager_SanitizeFolderName__ref_ref

.globl m_Skymu_Databases_DatabaseManager_BuildContactMap__void
.type m_Skymu_Databases_DatabaseManager_BuildContactMap__void, @function
m_Skymu_Databases_DatabaseManager_BuildContactMap__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_BuildContactMap_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0006:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0009
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_000a:
    lea .LN_1_m_Skymu_Databases_DatabaseManager_BuildContactMap_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_User_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Databases_DatabaseManager_BuildContactMap_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0014:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0015:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_get_Contacts__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_001a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_ContactsTable_Read__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_001f:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0020:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0021:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0022:
    jmp .Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0046
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0024:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0025:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0027:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0028:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0029:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_002e:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0042
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0030:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0031:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_Databases_DatabaseManager_BuildContactMap_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0036:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0037:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_003c:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_003d:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_set_Item__gen_gen
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0042:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0043:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0044:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0045:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0046:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0047:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0048:
    mov -56(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0049:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_004a:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_0024
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_004c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_BuildContactMap_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_BuildContactMap__void, .-m_Skymu_Databases_DatabaseManager_BuildContactMap__void

.globl m_Skymu_Databases_DatabaseManager_WriteConfigInternal__ref
.type m_Skymu_Databases_DatabaseManager_WriteConfigInternal__ref, @function
m_Skymu_Databases_DatabaseManager_WriteConfigInternal__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0000:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0001:
    mov -24(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0007:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0008:
    lea .LS_0_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_000d:
    mov -40(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0012:
    lea .LS_1_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0017:
    mov -48(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_001c:
    mov $6, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_001d:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0022:
    lea .LN_3_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0027:
    lea .LN_4_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_002c:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_002d:
    lea .LN_5_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XDocument_ctor__arr
    mov %r12, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0032:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0033:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_Save__ref
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_0038:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_WriteConfigInternal__ref, .-m_Skymu_Databases_DatabaseManager_WriteConfigInternal__ref

.globl m_Skymu_Databases_DatabaseManager_CreateConnection__void
.type m_Skymu_Databases_DatabaseManager_CreateConnection__void, @function
m_Skymu_Databases_DatabaseManager_CreateConnection__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Databases_DatabaseManager_CreateConnection_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_0006:
    mov -24(%rbp), %rdi
    call m_System_IO_Path_GetDirectoryName__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_000b:
    mov -24(%rbp), %rdi
    call m_System_IO_Directory_CreateDirectory__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_0010:
    mov -24(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_0011:
    lea .LS_1_m_Skymu_Databases_DatabaseManager_CreateConnection_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_0017:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Databases_DatabaseManager_CreateConnection_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_001c:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_0021:
    lea .LN_3_m_Skymu_Databases_DatabaseManager_CreateConnection_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_Microsoft_Data_Sqlite_SqliteConnection_ctor__ref
    mov %r12, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_0026:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_0027:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbConnection_Open__void
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_002c:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_CreateConnection_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_CreateConnection__void, .-m_Skymu_Databases_DatabaseManager_CreateConnection__void

.globl m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref
.type m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref, @function
m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0001:
    mov -24(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0016
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0008:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0009:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_000a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_get_Chars__i4
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_000f:
    mov -24(%rbp), %rdi
    call m_System_Char_IsDigit__c
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0014:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0018
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0017:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0018:
    lea .LS_0_m_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_001d:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_001e:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_0023:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref, .-m_Skymu_Databases_DatabaseManager_ConvertIdentifier__ref

.globl m_Skymu_Databases_DatabaseManager_UnconvertIdentifier__ref
.type m_Skymu_Databases_DatabaseManager_UnconvertIdentifier__ref, @function
m_Skymu_Databases_DatabaseManager_UnconvertIdentifier__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0001:
    mov -32(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0015
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0008:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0009:
    lea .LS_0_m_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_000e:
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
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0013:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0017
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0015:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0016:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0018:
    mov $3, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0019:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_001f:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0020:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_get_Length__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0025:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0026:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0038
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0028:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0029:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_002a:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_get_Chars__i4
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_002f:
    mov -32(%rbp), %rdi
    call m_System_Char_IsDigit__c
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0034:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0038
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0036:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0037:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0038:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_0039:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_UnconvertIdentifier__ref, .-m_Skymu_Databases_DatabaseManager_UnconvertIdentifier__ref

.globl m_Skymu_Databases_DatabaseManager_PrepareAvatarBytes__arr
.type m_Skymu_Databases_DatabaseManager_PrepareAvatarBytes__arr, @function
m_Skymu_Databases_DatabaseManager_PrepareAvatarBytes__arr:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0001:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0007
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0003:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0004:
    mov -32(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0005:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0009
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0009:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_000a:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_000b:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_000c:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0010
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_000f:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0011:
    mov -40(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0012:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0013:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0014:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0015:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_001a:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_001b:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_001c:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_001d:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_001e:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_001f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0020:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0021:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0022:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0023:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0024:
    mov -88(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0025:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_0026:
    mov -104(%rbp), %r8
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_Buffer_BlockCopy__ref_i4_ref_i4_i4
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_002b:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_002c:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_PrepareAvatarBytes_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_PrepareAvatarBytes__arr, .-m_Skymu_Databases_DatabaseManager_PrepareAvatarBytes__arr

.globl m_Skymu_Databases_DatabaseManager_EnsureTablesInternal__ref
.type m_Skymu_Databases_DatabaseManager_EnsureTablesInternal__ref, @function
m_Skymu_Databases_DatabaseManager_EnsureTablesInternal__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Data_Sqlite_SqliteConnection_CreateCommand__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_0008:
    lea .LS_0_m_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref(%rip), %rdi
    mov $57547, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_000d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_set_CommandText__ref
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_0012:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_0013:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Data_Common_DbCommand_ExecuteNonQuery__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_0018:
    mov -32(%rbp), %rax
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_0019:
    jmp .Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_0025
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_0025:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Databases_DatabaseManager_EnsureTablesInternal__ref, .-m_Skymu_Databases_DatabaseManager_EnsureTablesInternal__ref

    .globl m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildGroup__ref_ref_i4_v_gen_gen
    .type m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildGroup__ref_ref_i4_v_gen_gen, @function
m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildGroup__ref_ref_i4_v_gen_gen:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildGroup_ref_ref_i4_v_gen_gen(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildGroup__ref_ref_i4_v_gen_gen, .-m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildGroup__ref_ref_i4_v_gen_gen

    .globl m_Skymu_Databases_DatabaseManager_ServersTable_Read__void
    .type m_Skymu_Databases_DatabaseManager_ServersTable_Read__void, @function
m_Skymu_Databases_DatabaseManager_ServersTable_Read__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Databases_DatabaseManager_ServersTable_Read_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Databases_DatabaseManager_ServersTable_Read__void, .-m_Skymu_Databases_DatabaseManager_ServersTable_Read__void

    .globl m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_i4_gen
    .type m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_i4_gen, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_i4_gen:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Databases_DatabaseManager_MessagesTable_Read_ref_i4_gen(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_i4_gen, .-m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_i4_gen

    .globl m_Skymu_Databases_DatabaseManager_MessagesTable_ReadRow__ref_i8_gen_ref
    .type m_Skymu_Databases_DatabaseManager_MessagesTable_ReadRow__ref_i8_gen_ref, @function
m_Skymu_Databases_DatabaseManager_MessagesTable_ReadRow__ref_i8_gen_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadRow_ref_i8_gen_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Databases_DatabaseManager_MessagesTable_ReadRow__ref_i8_gen_ref, .-m_Skymu_Databases_DatabaseManager_MessagesTable_ReadRow__ref_i8_gen_ref

    .globl m_Skymu_Databases_DatabaseManager_EnsureDatabaseVersion__ref_ref
    .type m_Skymu_Databases_DatabaseManager_EnsureDatabaseVersion__ref_ref, @function
m_Skymu_Databases_DatabaseManager_EnsureDatabaseVersion__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Databases_DatabaseManager_EnsureDatabaseVersion_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Databases_DatabaseManager_EnsureDatabaseVersion__ref_ref, .-m_Skymu_Databases_DatabaseManager_EnsureDatabaseVersion__ref_ref

    .globl m_Skymu_Databases_DatabaseManager_UserFromReader__ref_ref
    .type m_Skymu_Databases_DatabaseManager_UserFromReader__ref_ref, @function
m_Skymu_Databases_DatabaseManager_UserFromReader__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Databases_DatabaseManager_UserFromReader_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Databases_DatabaseManager_UserFromReader__ref_ref, .-m_Skymu_Databases_DatabaseManager_UserFromReader__ref_ref

    .globl m_Skymu_Databases_DatabaseManager_StubUser__ref
    .type m_Skymu_Databases_DatabaseManager_StubUser__ref, @function
m_Skymu_Databases_DatabaseManager_StubUser__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Databases_DatabaseManager_StubUser_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Databases_DatabaseManager_StubUser__ref, .-m_Skymu_Databases_DatabaseManager_StubUser__ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Databases_DatabaseManager_AccountsTable_ctor_ref:
    .asciz "_db"

.LN_0_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "_db"

.LS_1_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 83, 69, 82, 84, 32, 73, 78, 84, 79, 32, 65, 99, 99, 111, 117, 110, 116, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 44, 32, 115, 107, 121, 112, 101, 110, 97, 109, 101, 44, 32, 117, 115, 101, 114, 110, 97, 109, 101, 44, 32, 112, 115, 116, 110, 110, 117, 109, 98, 101, 114, 44, 32, 102, 117, 108, 108, 110, 97, 109, 101, 44, 32, 98, 105, 114, 116, 104, 100, 97, 121, 44, 32, 103, 101, 110, 100, 101, 114, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 110, 103, 117, 97, 103, 101, 115, 44, 32, 99, 111, 117, 110, 116, 114, 121, 44, 32, 112, 114, 111, 118, 105, 110, 99, 101, 44, 32, 99, 105, 116, 121, 44, 32, 112, 104, 111, 110, 101, 95, 104, 111, 109, 101, 44, 32, 112, 104, 111, 110, 101, 95, 111, 102, 102, 105, 99, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 104, 111, 110, 101, 95, 109, 111, 98, 105, 108, 101, 44, 32, 101, 109, 97, 105, 108, 115, 44, 32, 104, 111, 109, 101, 112, 97, 103, 101, 44, 32, 97, 98, 111, 117, 116, 44, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 111, 111, 100, 95, 116, 101, 120, 116, 44, 32, 114, 105, 99, 104, 95, 109, 111, 111, 100, 95, 116, 101, 120, 116, 44, 32, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 44, 32, 108, 105, 118, 101, 105, 100, 95, 109, 101, 109, 98, 101, 114, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 105, 108, 97, 98, 105, 108, 105, 116, 121, 44, 32, 108, 97, 115, 116, 111, 110, 108, 105, 110, 101, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 112, 108, 117, 103, 105, 110, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 86, 65, 76, 85, 69, 83, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 44, 32, 64, 115, 107, 121, 112, 101, 110, 97, 109, 101, 44, 32, 64, 117, 115, 101, 114, 110, 97, 109, 101, 44, 32, 64, 112, 115, 116, 110, 110, 117, 109, 98, 101, 114, 44, 32, 64, 102, 117, 108, 108, 110, 97, 109, 101, 44, 32, 64, 98, 105, 114, 116, 104, 100, 97, 121, 44, 32, 64, 103, 101, 110, 100, 101, 114, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 108, 97, 110, 103, 117, 97, 103, 101, 115, 44, 32, 64, 99, 111, 117, 110, 116, 114, 121, 44, 32, 64, 112, 114, 111, 118, 105, 110, 99, 101, 44, 32, 64, 99, 105, 116, 121, 44, 32, 64, 112, 104, 111, 110, 101, 95, 104, 111, 109, 101, 44, 32, 64, 112, 104, 111, 110, 101, 95, 111, 102, 102, 105, 99, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 112, 104, 111, 110, 101, 95, 109, 111, 98, 105, 108, 101, 44, 32, 64, 101, 109, 97, 105, 108, 115, 44, 32, 64, 104, 111, 109, 101, 112, 97, 103, 101, 44, 32, 64, 97, 98, 111, 117, 116, 44, 32, 64, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 109, 111, 111, 100, 95, 116, 101, 120, 116, 44, 32, 64, 114, 105, 99, 104, 95, 109, 111, 111, 100, 95, 116, 101, 120, 116, 44, 32, 64, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 44, 32, 64, 108, 105, 118, 101, 105, 100, 95, 109, 101, 109, 98, 101, 114, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 97, 118, 97, 105, 108, 97, 98, 105, 108, 105, 116, 121, 44, 32, 64, 108, 97, 115, 116, 111, 110, 108, 105, 110, 101, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 64, 112, 108, 117, 103, 105, 110, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 78, 32, 67, 79, 78, 70, 76, 73, 67, 84, 40, 115, 107, 121, 112, 101, 110, 97, 109, 101, 44, 32, 112, 108, 117, 103, 105, 110, 41, 32, 68, 79, 32, 85, 80, 68, 65, 84, 69, 32, 83, 69, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 107, 121, 112, 101, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 115, 107, 121, 112, 101, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 117, 115, 101, 114, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 117, 108, 108, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 102, 117, 108, 108, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 111, 111, 100, 95, 116, 101, 120, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 109, 111, 111, 100, 95, 116, 101, 120, 116, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 105, 99, 104, 95, 109, 111, 111, 100, 95, 116, 101, 120, 116, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 114, 105, 99, 104, 95, 109, 111, 111, 100, 95, 116, 101, 120, 116, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 105, 100, 95, 109, 101, 109, 98, 101, 114, 110, 97, 109, 101, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 108, 105, 118, 101, 105, 100, 95, 109, 101, 109, 98, 101, 114, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 105, 108, 97, 98, 105, 108, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 97, 118, 97, 105, 108, 97, 98, 105, 108, 105, 116, 121, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 111, 110, 108, 105, 110, 101, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 108, 97, 115, 116, 111, 110, 108, 105, 110, 101, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 108, 117, 103, 105, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 112, 108, 117, 103, 105, 110, 59

.LS_2_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116

.LN_3_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "System.Int32"

.LS_4_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 115, 107, 121, 112, 101, 110, 97, 109, 101

.LN_5_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_6_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 117, 115, 101, 114, 110, 97, 109, 101

.LN_7_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_8_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 112, 115, 116, 110, 110, 117, 109, 98, 101, 114

.LN_9_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_10_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 102, 117, 108, 108, 110, 97, 109, 101

.LN_11_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_12_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 98, 105, 114, 116, 104, 100, 97, 121

.LN_13_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_14_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 103, 101, 110, 100, 101, 114

.LN_15_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_16_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 108, 97, 110, 103, 117, 97, 103, 101, 115

.LN_17_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_18_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 99, 111, 117, 110, 116, 114, 121

.LN_19_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_20_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 112, 114, 111, 118, 105, 110, 99, 101

.LN_21_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_22_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 99, 105, 116, 121

.LN_23_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_24_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 112, 104, 111, 110, 101, 95, 104, 111, 109, 101

.LN_25_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_26_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 112, 104, 111, 110, 101, 95, 111, 102, 102, 105, 99, 101

.LN_27_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_28_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 112, 104, 111, 110, 101, 95, 109, 111, 98, 105, 108, 101

.LN_29_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_30_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 101, 109, 97, 105, 108, 115

.LN_31_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_32_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 104, 111, 109, 101, 112, 97, 103, 101

.LN_33_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_34_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 97, 98, 111, 117, 116

.LN_35_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_36_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101

.LN_37_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_38_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 109, 111, 111, 100, 95, 116, 101, 120, 116

.LN_39_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_40_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 114, 105, 99, 104, 95, 109, 111, 111, 100, 95, 116, 101, 120, 116

.LN_41_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_42_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101

.LN_43_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_44_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 108, 105, 118, 101, 105, 100, 95, 109, 101, 109, 98, 101, 114, 110, 97, 109, 101

.LN_45_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_46_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 97, 118, 97, 105, 108, 97, 98, 105, 108, 105, 116, 121

.LN_47_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_48_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 108, 97, 115, 116, 111, 110, 108, 105, 110, 101, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112

.LN_49_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Value"

.LS_50_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .short 64, 112, 108, 117, 103, 105, 110

.LN_51_m_Skymu_Databases_DatabaseManager_AccountsTable_Write_ref:
    .asciz "Plugin"

.LN_0_m_Skymu_Databases_DatabaseManager_ContactsTable_ctor_ref:
    .asciz "_db"

.LN_0_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_void:
    .asciz "Yggdrasil.Models.User>"

.LN_1_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_void:
    .asciz "_db"

.LS_2_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_void:
    .short 83, 69, 76, 69, 67, 84, 32, 115, 107, 121, 112, 101, 110, 97, 109, 101, 44, 32, 117, 115, 101, 114, 110, 97, 109, 101, 44, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 32, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 44, 32, 109, 111, 111, 100, 95, 116, 101, 120, 116, 32, 70, 82, 79, 77, 32, 67, 111, 110, 116, 97, 99, 116, 115, 59

.LN_0_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref:
    .asciz "_db"

.LS_1_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref:
    .short 83, 69, 76, 69, 67, 84, 32, 115, 107, 121, 112, 101, 110, 97, 109, 101, 44, 32, 117, 115, 101, 114, 110, 97, 109, 101, 44, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 32, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 44, 32, 109, 111, 111, 100, 95, 116, 101, 120, 116, 32, 70, 82, 79, 77, 32, 67, 111, 110, 116, 97, 99, 116, 115, 32, 87, 72, 69, 82, 69, 32, 115, 107, 121, 112, 101, 110, 97, 109, 101, 32, 61, 32, 64, 115, 107, 121, 112, 101, 110, 97, 109, 101, 32, 76, 73, 77, 73, 84, 32, 49, 59

.LS_2_m_Skymu_Databases_DatabaseManager_ContactsTable_Read_ref:
    .short 64, 115, 107, 121, 112, 101, 110, 97, 109, 101

.LN_0_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "_db"

.LS_1_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 83, 69, 82, 84, 32, 73, 78, 84, 79, 32, 67, 111, 110, 116, 97, 99, 116, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 44, 32, 116, 121, 112, 101, 44, 32, 115, 107, 121, 112, 101, 110, 97, 109, 101, 44, 32, 117, 115, 101, 114, 110, 97, 109, 101, 44, 32, 112, 115, 116, 110, 110, 117, 109, 98, 101, 114, 44, 32, 102, 117, 108, 108, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 32, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 32, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 44, 32, 109, 111, 111, 100, 95, 116, 101, 120, 116, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100, 44, 32, 105, 115, 98, 108, 111, 99, 107, 101, 100, 44, 32, 98, 117, 100, 100, 121, 115, 116, 97, 116, 117, 115, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 108, 105, 97, 115, 101, 115, 44, 32, 98, 105, 114, 116, 104, 100, 97, 121, 44, 32, 103, 101, 110, 100, 101, 114, 44, 32, 108, 97, 110, 103, 117, 97, 103, 101, 115, 44, 32, 99, 111, 117, 110, 116, 114, 121, 44, 32, 112, 114, 111, 118, 105, 110, 99, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 105, 116, 121, 44, 32, 112, 104, 111, 110, 101, 95, 104, 111, 109, 101, 44, 32, 112, 104, 111, 110, 101, 95, 111, 102, 102, 105, 99, 101, 44, 32, 112, 104, 111, 110, 101, 95, 109, 111, 98, 105, 108, 101, 44, 32, 101, 109, 97, 105, 108, 115, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 97, 115, 104, 101, 100, 95, 101, 109, 97, 105, 108, 115, 44, 32, 104, 111, 109, 101, 112, 97, 103, 101, 44, 32, 97, 98, 111, 117, 116, 44, 32, 114, 105, 99, 104, 95, 109, 111, 111, 100, 95, 116, 101, 120, 116, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 102, 105, 108, 101, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 110, 114, 111, 102, 95, 97, 117, 116, 104, 101, 100, 95, 98, 117, 100, 100, 105, 101, 115, 44, 32, 105, 112, 99, 111, 117, 110, 116, 114, 121, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 109, 111, 111, 100, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 114, 101, 99, 101, 105, 118, 101, 100, 95, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 108, 97, 115, 116, 111, 110, 108, 105, 110, 101, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 97, 118, 97, 105, 108, 97, 98, 105, 108, 105, 116, 121, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 102, 114, 101, 115, 104, 105, 110, 103, 44, 32, 103, 105, 118, 101, 110, 95, 97, 117, 116, 104, 108, 101, 118, 101, 108, 44, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 115, 112, 101, 101, 100, 100, 105, 97, 108, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 99, 111, 109, 109, 101, 110, 116, 44, 32, 97, 108, 101, 114, 116, 115, 116, 114, 105, 110, 103, 44, 32, 108, 97, 115, 116, 117, 115, 101, 100, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 95, 99, 111, 117, 110, 116, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 86, 65, 76, 85, 69, 83, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 44, 32, 64, 116, 121, 112, 101, 44, 32, 64, 115, 107, 121, 112, 101, 110, 97, 109, 101, 44, 32, 64, 117, 115, 101, 114, 110, 97, 109, 101, 44, 32, 64, 112, 115, 116, 110, 110, 117, 109, 98, 101, 114, 44, 32, 64, 102, 117, 108, 108, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 32, 64, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 32, 64, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 44, 32, 64, 109, 111, 111, 100, 95, 116, 101, 120, 116, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 105, 115, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100, 44, 32, 64, 105, 115, 98, 108, 111, 99, 107, 101, 100, 44, 32, 64, 98, 117, 100, 100, 121, 115, 116, 97, 116, 117, 115, 44, 32, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 78, 32, 67, 79, 78, 70, 76, 73, 67, 84, 40, 115, 107, 121, 112, 101, 110, 97, 109, 101, 41, 32, 68, 79, 32, 85, 80, 68, 65, 84, 69, 32, 83, 69, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 117, 108, 108, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 102, 117, 108, 108, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 111, 111, 100, 95, 116, 101, 120, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 109, 111, 111, 100, 95, 116, 101, 120, 116, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 107, 121, 112, 101, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 115, 107, 121, 112, 101, 110, 97, 109, 101, 59

.LS_2_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116

.LS_3_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 116, 121, 112, 101

.LS_4_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 115, 107, 121, 112, 101, 110, 97, 109, 101

.LS_5_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 117, 115, 101, 114, 110, 97, 109, 101

.LS_6_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 112, 115, 116, 110, 110, 117, 109, 98, 101, 114

.LS_7_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 102, 117, 108, 108, 110, 97, 109, 101

.LS_8_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101

.LS_9_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101

.LS_10_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101

.LS_11_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 109, 111, 111, 100, 95, 116, 101, 120, 116

.LS_12_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 105, 115, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100

.LS_13_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 105, 115, 98, 108, 111, 99, 107, 101, 100

.LS_14_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 98, 117, 100, 100, 121, 115, 116, 97, 116, 117, 115

.LS_15_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116

.LN_16_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "System.Int32"

.LS_17_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 116, 121, 112, 101

.LN_18_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "System.Int32"

.LS_19_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 115, 107, 121, 112, 101, 110, 97, 109, 101

.LN_20_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "Value"

.LS_21_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 117, 115, 101, 114, 110, 97, 109, 101

.LN_22_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "Value"

.LS_23_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 112, 115, 116, 110, 110, 117, 109, 98, 101, 114

.LN_24_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "Value"

.LS_25_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 102, 117, 108, 108, 110, 97, 109, 101

.LN_26_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "Value"

.LS_27_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101

.LN_28_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "Value"

.LS_29_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101

.LN_30_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "Value"

.LS_31_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101

.LN_32_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "Value"

.LS_33_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 109, 111, 111, 100, 95, 116, 101, 120, 116

.LN_34_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "Value"

.LS_35_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 105, 115, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100

.LN_36_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "System.Int32"

.LS_37_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 105, 115, 98, 108, 111, 99, 107, 101, 100

.LN_38_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "System.Int32"

.LS_39_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .short 64, 98, 117, 100, 100, 121, 115, 116, 97, 116, 117, 115

.LN_40_m_Skymu_Databases_DatabaseManager_ContactsTable_Write_gen:
    .asciz "System.Int32"

.LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_ctor_ref:
    .asciz "_db"

.LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void:
    .asciz "_db"

.LN_1_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void:
    .asciz "Yggdrasil.Models.Conversation>"

.LN_2_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void:
    .asciz "_db"

.LS_3_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void:
    .short 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 83, 69, 76, 69, 67, 84, 32, 105, 100, 44, 32, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 44, 32, 116, 121, 112, 101, 44, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 32, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 97, 99, 116, 105, 118, 105, 116, 121, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 117, 110, 99, 111, 110, 115, 117, 109, 101, 100, 95, 110, 111, 114, 109, 97, 108, 95, 109, 101, 115, 115, 97, 103, 101, 115, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 70, 82, 79, 77, 32, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 115, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 82, 68, 69, 82, 32, 66, 89, 32, 108, 97, 115, 116, 95, 97, 99, 116, 105, 118, 105, 116, 121, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 68, 69, 83, 67, 59

.LN_4_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void:
    .asciz "MinValue"

.LN_5_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void:
    .asciz "_db"

.LN_6_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void:
    .asciz "_contactMap"

.LN_7_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void:
    .asciz "_db"

.LN_8_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_void:
    .asciz "_contactMap"

.LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .asciz "_db"

.LN_1_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .asciz "_db"

.LS_2_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .short 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 83, 69, 76, 69, 67, 84, 32, 105, 100, 44, 32, 116, 121, 112, 101, 44, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 32, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 97, 99, 116, 105, 118, 105, 116, 121, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 117, 110, 99, 111, 110, 115, 117, 109, 101, 100, 95, 110, 111, 114, 109, 97, 108, 95, 109, 101, 115, 115, 97, 103, 101, 115, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 70, 82, 79, 77, 32, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 115, 32, 87, 72, 69, 82, 69, 32, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 32, 61, 32, 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 32, 76, 73, 77, 73, 84, 32, 49, 59

.LS_3_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .short 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100

.LN_4_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .asciz "MinValue"

.LN_5_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .asciz "System.Collections.Generic.List`1<string>"

.LS_6_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .short 83, 69, 76, 69, 67, 84, 32, 105, 100, 101, 110, 116, 105, 116, 121, 32, 70, 82, 79, 77, 32, 80, 97, 114, 116, 105, 99, 105, 112, 97, 110, 116, 115, 32, 87, 72, 69, 82, 69, 32, 99, 111, 110, 118, 111, 95, 105, 100, 32, 61, 32, 64, 99, 111, 110, 118, 111, 95, 105, 100, 59

.LS_7_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .short 64, 99, 111, 110, 118, 111, 95, 105, 100

.LN_8_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .asciz "System.Int64"

.LN_9_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .asciz "_db"

.LN_10_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .asciz "_contactMap"

.LN_11_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .asciz "_db"

.LN_12_m_Skymu_Databases_DatabaseManager_ConversationsTable_Read_ref:
    .asciz "_contactMap"

.LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void:
    .asciz "System.Collections.Generic.List`1<string>>"

.LN_1_m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void:
    .asciz "_db"

.LS_2_m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void:
    .short 83, 69, 76, 69, 67, 84, 32, 99, 111, 110, 118, 111, 95, 105, 100, 44, 32, 105, 100, 101, 110, 116, 105, 116, 121, 32, 70, 82, 79, 77, 32, 80, 97, 114, 116, 105, 99, 105, 112, 97, 110, 116, 115, 59

.LN_3_m_Skymu_Databases_DatabaseManager_ConversationsTable_LoadParticipantMap_void:
    .asciz "System.Collections.Generic.List`1<string>"

.LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen:
    .asciz "System.DateTime>"

.LN_1_m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildDM_ref_ref_i4_v_gen:
    .asciz "Yggdrasil.Models.DirectMessage"

.LN_0_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .asciz "_db"

.LS_1_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 83, 69, 82, 84, 32, 73, 78, 84, 79, 32, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 44, 32, 105, 100, 101, 110, 116, 105, 116, 121, 44, 32, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 44, 32, 116, 121, 112, 101, 44, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 32, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 116, 97, 95, 116, 111, 112, 105, 99, 44, 32, 109, 101, 116, 97, 95, 112, 105, 99, 116, 117, 114, 101, 44, 32, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114, 44, 32, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 114, 101, 97, 116, 111, 114, 44, 32, 99, 114, 101, 97, 116, 105, 111, 110, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 109, 101, 115, 115, 97, 103, 101, 95, 105, 100, 44, 32, 108, 97, 115, 116, 95, 97, 99, 116, 105, 118, 105, 116, 121, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 98, 111, 111, 107, 109, 97, 114, 107, 101, 100, 44, 32, 105, 115, 95, 98, 108, 111, 99, 107, 101, 100, 44, 32, 109, 121, 95, 115, 116, 97, 116, 117, 115, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 86, 65, 76, 85, 69, 83, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 44, 32, 64, 105, 100, 101, 110, 116, 105, 116, 121, 44, 32, 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 44, 32, 64, 116, 121, 112, 101, 44, 32, 64, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 32, 64, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 109, 101, 116, 97, 95, 116, 111, 112, 105, 99, 44, 32, 64, 109, 101, 116, 97, 95, 112, 105, 99, 116, 117, 114, 101, 44, 32, 64, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 48, 44, 32, 48, 44, 32, 48, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 78, 32, 67, 79, 78, 70, 76, 73, 67, 84, 40, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 41, 32, 68, 79, 32, 85, 80, 68, 65, 84, 69, 32, 83, 69, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 116, 97, 95, 116, 111, 112, 105, 99, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 109, 101, 116, 97, 95, 116, 111, 112, 105, 99, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 116, 97, 95, 112, 105, 99, 116, 117, 114, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 109, 101, 116, 97, 95, 112, 105, 99, 116, 117, 114, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114, 59

.LS_2_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116

.LS_3_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 105, 100, 101, 110, 116, 105, 116, 121

.LS_4_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100

.LS_5_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 116, 121, 112, 101

.LS_6_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101

.LS_7_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101

.LS_8_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 109, 101, 116, 97, 95, 116, 111, 112, 105, 99

.LS_9_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 109, 101, 116, 97, 95, 112, 105, 99, 116, 117, 114, 101

.LS_10_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114

.LS_11_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116

.LN_12_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .asciz "System.Int32"

.LS_13_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 105, 100, 101, 110, 116, 105, 116, 121

.LN_14_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .asciz "Value"

.LS_15_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100

.LN_16_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .asciz "Value"

.LS_17_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 116, 121, 112, 101

.LN_18_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .asciz "System.Int32"

.LS_19_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101

.LN_20_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .asciz "Value"

.LS_21_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101

.LN_22_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .asciz "Value"

.LS_23_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 109, 101, 116, 97, 95, 116, 111, 112, 105, 99

.LN_24_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .asciz "Value"

.LS_25_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 109, 101, 116, 97, 95, 112, 105, 99, 116, 117, 114, 101

.LN_26_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .asciz "Value"

.LS_27_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .short 64, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114

.LN_28_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .asciz "Value"

.LN_29_m_Skymu_Databases_DatabaseManager_ConversationsTable_Write_gen:
    .asciz "_db"

.LN_0_m_Skymu_Databases_DatabaseManager_ServersTable_ctor_ref:
    .asciz "_db"

.LN_0_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .asciz "_db"

.LS_1_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 83, 69, 82, 84, 32, 73, 78, 84, 79, 32, 83, 101, 114, 118, 101, 114, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 101, 110, 116, 105, 116, 121, 44, 32, 110, 97, 109, 101, 44, 32, 102, 111, 108, 100, 101, 114, 95, 105, 100, 44, 32, 105, 99, 111, 110, 44, 32, 98, 97, 110, 110, 101, 114, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110, 44, 32, 105, 110, 118, 105, 116, 101, 44, 32, 109, 101, 109, 98, 101, 114, 95, 99, 111, 117, 110, 116, 44, 32, 112, 111, 115, 105, 116, 105, 111, 110, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 86, 65, 76, 85, 69, 83, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 105, 100, 101, 110, 116, 105, 116, 121, 44, 32, 64, 110, 97, 109, 101, 44, 32, 64, 102, 111, 108, 100, 101, 114, 95, 105, 100, 44, 32, 64, 105, 99, 111, 110, 44, 32, 64, 98, 97, 110, 110, 101, 114, 44, 32, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110, 44, 32, 64, 105, 110, 118, 105, 116, 101, 44, 32, 64, 109, 101, 109, 98, 101, 114, 95, 99, 111, 117, 110, 116, 44, 32, 64, 112, 111, 115, 105, 116, 105, 111, 110, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 78, 32, 67, 79, 78, 70, 76, 73, 67, 84, 40, 105, 100, 101, 110, 116, 105, 116, 121, 41, 32, 68, 79, 32, 85, 80, 68, 65, 84, 69, 32, 83, 69, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 111, 108, 100, 101, 114, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 102, 111, 108, 100, 101, 114, 95, 105, 100, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 99, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 105, 99, 111, 110, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 97, 110, 110, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 98, 97, 110, 110, 101, 114, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 118, 105, 116, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 105, 110, 118, 105, 116, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 109, 98, 101, 114, 95, 99, 111, 117, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 109, 101, 109, 98, 101, 114, 95, 99, 111, 117, 110, 116, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 111, 115, 105, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 112, 111, 115, 105, 116, 105, 111, 110, 59

.LS_2_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 105, 100, 101, 110, 116, 105, 116, 121

.LS_3_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 110, 97, 109, 101

.LS_4_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 102, 111, 108, 100, 101, 114, 95, 105, 100

.LS_5_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 105, 99, 111, 110

.LS_6_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 98, 97, 110, 110, 101, 114

.LS_7_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110

.LS_8_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 105, 110, 118, 105, 116, 101

.LS_9_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 109, 101, 109, 98, 101, 114, 95, 99, 111, 117, 110, 116

.LS_10_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 112, 111, 115, 105, 116, 105, 111, 110

.LS_11_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 105, 100, 101, 110, 116, 105, 116, 121

.LS_12_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 110, 97, 109, 101

.LN_13_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .asciz "Value"

.LS_14_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 102, 111, 108, 100, 101, 114, 95, 105, 100

.LN_15_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .asciz "Value"

.LS_16_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 105, 99, 111, 110

.LN_17_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .asciz "Value"

.LS_18_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 98, 97, 110, 110, 101, 114

.LN_19_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .asciz "Value"

.LS_20_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110

.LN_21_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .asciz "Value"

.LS_22_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 105, 110, 118, 105, 116, 101

.LN_23_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .asciz "Value"

.LS_24_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 109, 101, 109, 98, 101, 114, 95, 99, 111, 117, 110, 116

.LN_25_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .asciz "System.Int32"

.LN_26_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .asciz "Value"

.LS_27_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .short 64, 112, 111, 115, 105, 116, 105, 111, 110

.LN_28_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .asciz "System.Int32"

.LN_29_m_Skymu_Databases_DatabaseManager_ServersTable_Write_gen:
    .asciz "Value"

.LN_0_m_Skymu_Databases_DatabaseManager_ParticipantsTable_ctor_ref:
    .asciz "_db"

.LN_0_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .asciz "_db"

.LS_1_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .short 83, 69, 76, 69, 67, 84, 32, 105, 100, 32, 70, 82, 79, 77, 32, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 115, 32, 87, 72, 69, 82, 69, 32, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 32, 61, 32, 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 32, 76, 73, 77, 73, 84, 32, 49, 59

.LS_2_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .short 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100

.LS_3_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .short 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 83, 69, 82, 84, 32, 73, 78, 84, 79, 32, 80, 97, 114, 116, 105, 99, 105, 112, 97, 110, 116, 115, 32, 40, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 44, 32, 99, 111, 110, 118, 111, 95, 105, 100, 44, 32, 105, 100, 101, 110, 116, 105, 116, 121, 44, 32, 114, 97, 110, 107, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 86, 65, 76, 85, 69, 83, 32, 40, 49, 44, 32, 64, 99, 111, 110, 118, 111, 95, 105, 100, 44, 32, 64, 105, 100, 101, 110, 116, 105, 116, 121, 44, 32, 64, 114, 97, 110, 107, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 78, 32, 67, 79, 78, 70, 76, 73, 67, 84, 40, 99, 111, 110, 118, 111, 95, 105, 100, 44, 32, 105, 100, 101, 110, 116, 105, 116, 121, 41, 32, 68, 79, 32, 85, 80, 68, 65, 84, 69, 32, 83, 69, 84, 32, 114, 97, 110, 107, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 114, 97, 110, 107, 59

.LS_4_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .short 64, 99, 111, 110, 118, 111, 95, 105, 100

.LS_5_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .short 64, 105, 100, 101, 110, 116, 105, 116, 121

.LS_6_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .short 64, 114, 97, 110, 107

.LS_7_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .short 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100

.LN_8_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .asciz "Value"

.LN_9_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .asciz "Value"

.LS_10_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .short 64, 99, 111, 110, 118, 111, 95, 105, 100

.LN_11_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .asciz "System.Int64"

.LS_12_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .short 64, 105, 100, 101, 110, 116, 105, 116, 121

.LS_13_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .short 64, 114, 97, 110, 107

.LN_14_m_Skymu_Databases_DatabaseManager_ParticipantsTable_Write_gen:
    .asciz "System.Int32"

.LN_0_m_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor_void:
    .asciz "Skymu.Databases.DatabaseManager/MessagesTable/'<>c'"

.LN_1_m_Skymu_Databases_DatabaseManager_MessagesTable_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_Databases_DatabaseManager_MessagesTable_ctor_ref:
    .asciz "_db"

.LN_0_m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void:
    .asciz "_db"

.LN_1_m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void:
    .asciz "DbPath"

.LS_2_m_Skymu_Databases_DatabaseManager_MessagesTable_GetMediaFolder_void:
    .short 77, 101, 100, 105, 97

.LS_0_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 73, 78, 83, 69, 82, 84, 32, 73, 78, 84, 79, 32, 84, 114, 97, 110, 115, 102, 101, 114, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 44, 32, 116, 121, 112, 101, 44, 32, 112, 97, 114, 116, 110, 101, 114, 95, 104, 97, 110, 100, 108, 101, 44, 32, 112, 97, 114, 116, 110, 101, 114, 95, 100, 105, 115, 112, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 44, 32, 115, 116, 97, 114, 116, 116, 105, 109, 101, 44, 32, 102, 105, 110, 105, 115, 104, 116, 105, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 105, 108, 101, 112, 97, 116, 104, 44, 32, 102, 105, 108, 101, 110, 97, 109, 101, 44, 32, 102, 105, 108, 101, 115, 105, 122, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 121, 116, 101, 115, 116, 114, 97, 110, 115, 102, 101, 114, 114, 101, 100, 44, 32, 99, 111, 110, 118, 111, 95, 105, 100, 44, 32, 112, 107, 95, 105, 100, 44, 32, 102, 117, 108, 108, 115, 105, 122, 101, 95, 117, 114, 108, 44, 32, 99, 104, 97, 116, 109, 115, 103, 95, 105, 110, 100, 101, 120, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 97, 99, 116, 105, 118, 105, 116, 121, 44, 32, 102, 108, 97, 103, 115, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 86, 65, 76, 85, 69, 83, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 49, 44, 32, 64, 116, 121, 112, 101, 44, 32, 64, 112, 97, 114, 116, 110, 101, 114, 95, 104, 97, 110, 100, 108, 101, 44, 32, 64, 112, 97, 114, 116, 110, 101, 114, 95, 100, 105, 115, 112, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 56, 44, 32, 64, 115, 116, 97, 114, 116, 116, 105, 109, 101, 44, 32, 64, 102, 105, 110, 105, 115, 104, 116, 105, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 102, 105, 108, 101, 112, 97, 116, 104, 44, 32, 64, 102, 105, 108, 101, 110, 97, 109, 101, 44, 32, 64, 102, 105, 108, 101, 115, 105, 122, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 102, 105, 108, 101, 115, 105, 122, 101, 44, 32, 64, 99, 111, 110, 118, 111, 95, 105, 100, 44, 32, 64, 112, 107, 95, 105, 100, 44, 32, 64, 102, 117, 108, 108, 115, 105, 122, 101, 95, 117, 114, 108, 44, 32, 64, 99, 104, 97, 116, 109, 115, 103, 95, 105, 110, 100, 101, 120, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 102, 105, 110, 105, 115, 104, 116, 105, 109, 101, 44, 32, 48, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 78, 32, 67, 79, 78, 70, 76, 73, 67, 84, 32, 68, 79, 32, 78, 79, 84, 72, 73, 78, 71, 59

.LS_1_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 116, 121, 112, 101

.LS_2_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 112, 97, 114, 116, 110, 101, 114, 95, 104, 97, 110, 100, 108, 101

.LS_3_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 112, 97, 114, 116, 110, 101, 114, 95, 100, 105, 115, 112, 110, 97, 109, 101

.LS_4_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 115, 116, 97, 114, 116, 116, 105, 109, 101

.LS_5_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 102, 105, 110, 105, 115, 104, 116, 105, 109, 101

.LS_6_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 102, 105, 108, 101, 112, 97, 116, 104

.LS_7_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 102, 105, 108, 101, 110, 97, 109, 101

.LS_8_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 102, 105, 108, 101, 115, 105, 122, 101

.LS_9_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 99, 111, 110, 118, 111, 95, 105, 100

.LS_10_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 112, 107, 95, 105, 100

.LS_11_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 102, 117, 108, 108, 115, 105, 122, 101, 95, 117, 114, 108

.LS_12_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 99, 104, 97, 116, 109, 115, 103, 95, 105, 110, 100, 101, 120

.LN_13_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .asciz "System.DateTimeOffset"

.LS_14_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 105, 109, 97, 103, 101

.LS_15_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 123, 48, 125, 95, 123, 49, 125, 95, 123, 50, 125

.LN_16_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .asciz "System.Int32"

.LS_17_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 116, 121, 112, 101

.LN_18_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .asciz "System.Int32"

.LS_19_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 112, 97, 114, 116, 110, 101, 114, 95, 104, 97, 110, 100, 108, 101

.LN_20_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .asciz "Value"

.LS_21_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 112, 97, 114, 116, 110, 101, 114, 95, 100, 105, 115, 112, 110, 97, 109, 101

.LN_22_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .asciz "Value"

.LS_23_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 115, 116, 97, 114, 116, 116, 105, 109, 101

.LN_24_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .asciz "System.Int64"

.LS_25_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 102, 105, 110, 105, 115, 104, 116, 105, 109, 101

.LN_26_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .asciz "System.Int64"

.LS_27_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 102, 105, 108, 101, 112, 97, 116, 104

.LS_28_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 102, 105, 108, 101, 110, 97, 109, 101

.LS_29_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 102, 105, 108, 101, 115, 105, 122, 101

.LS_30_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 99, 111, 110, 118, 111, 95, 105, 100

.LN_31_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .asciz "System.Int64"

.LS_32_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 112, 107, 95, 105, 100

.LN_33_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .asciz "Value"

.LS_34_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 102, 117, 108, 108, 115, 105, 122, 101, 95, 117, 114, 108

.LN_35_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .asciz "Empty"

.LS_36_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .short 64, 99, 104, 97, 116, 109, 115, 103, 95, 105, 110, 100, 101, 120

.LN_37_m_Skymu_Databases_DatabaseManager_MessagesTable_WriteImageAttachments_gen_ref_i8_ref_ref:
    .asciz "System.Int32"

.LN_0_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "Yggdrasil.Models.Attachment>>"

.LS_1_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .short 83, 69, 76, 69, 67, 84, 32, 112, 107, 95, 105, 100, 44, 32, 102, 105, 108, 101, 112, 97, 116, 104, 44, 32, 102, 105, 108, 101, 110, 97, 109, 101, 44, 32, 102, 117, 108, 108, 115, 105, 122, 101, 95, 117, 114, 108, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 70, 82, 79, 77, 32, 84, 114, 97, 110, 115, 102, 101, 114, 115, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 87, 72, 69, 82, 69, 32, 99, 111, 110, 118, 111, 95, 105, 100, 32, 61, 32, 64, 99, 111, 110, 118, 111, 95, 105, 100, 32, 65, 78, 68, 32, 116, 121, 112, 101, 32, 61, 32, 49, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 82, 68, 69, 82, 32, 66, 89, 32, 112, 107, 95, 105, 100, 32, 65, 83, 67, 44, 32, 99, 104, 97, 116, 109, 115, 103, 95, 105, 110, 100, 101, 120, 32, 65, 83, 67, 59

.LS_2_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .short 64, 99, 111, 110, 118, 111, 95, 105, 100

.LN_3_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "System.Int64"

.LN_4_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "Yggdrasil.Models.Attachment"

.LN_5_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "Yggdrasil.Models.Attachment"

.LN_6_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "Yggdrasil.Models.Attachment>"

.LN_7_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "<>9__4_0"

.LN_8_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "<>9"

.LN_9_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "string>"

.LN_10_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "<>9__4_0"

.LN_11_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "<>9__4_1"

.LN_12_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "<>9"

.LN_13_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "Yggdrasil.Models.Attachment[]>"

.LN_14_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadImageAttachments_i8_ref:
    .asciz "<>9__4_1"

.LN_0_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "_db"

.LS_1_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 83, 69, 76, 69, 67, 84, 32, 105, 100, 32, 70, 82, 79, 77, 32, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 115, 32, 87, 72, 69, 82, 69, 32, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 32, 61, 32, 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 32, 76, 73, 77, 73, 84, 32, 49, 59

.LS_2_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100

.LN_3_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LN_4_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_5_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 83, 69, 82, 84, 32, 73, 78, 84, 79, 32, 77, 101, 115, 115, 97, 103, 101, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 44, 32, 99, 104, 97, 116, 110, 97, 109, 101, 44, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 97, 117, 116, 104, 111, 114, 44, 32, 102, 114, 111, 109, 95, 100, 105, 115, 112, 110, 97, 109, 101, 44, 32, 102, 114, 111, 109, 95, 117, 115, 101, 114, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 109, 115, 103, 95, 116, 121, 112, 101, 44, 32, 98, 111, 100, 121, 95, 120, 109, 108, 44, 32, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114, 44, 32, 99, 111, 110, 118, 111, 95, 105, 100, 44, 32, 116, 121, 112, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 107, 95, 105, 100, 44, 32, 114, 101, 109, 111, 116, 101, 95, 105, 100, 44, 32, 112, 97, 114, 101, 110, 116, 95, 105, 100, 44, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 95, 95, 109, 115, 44, 32, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 101, 110, 116, 105, 116, 105, 101, 115, 44, 32, 108, 101, 97, 118, 101, 114, 101, 97, 115, 111, 110, 44, 32, 99, 104, 97, 116, 109, 115, 103, 95, 115, 116, 97, 116, 117, 115, 44, 32, 98, 111, 100, 121, 95, 105, 115, 95, 114, 97, 119, 120, 109, 108, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 100, 105, 116, 101, 100, 95, 98, 121, 44, 32, 101, 100, 105, 116, 101, 100, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 115, 101, 110, 100, 105, 110, 103, 95, 115, 116, 97, 116, 117, 115, 44, 32, 99, 111, 110, 115, 117, 109, 112, 116, 105, 111, 110, 95, 115, 116, 97, 116, 117, 115, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 86, 65, 76, 85, 69, 83, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 44, 32, 64, 99, 104, 97, 116, 110, 97, 109, 101, 44, 32, 64, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 32, 64, 97, 117, 116, 104, 111, 114, 44, 32, 64, 102, 114, 111, 109, 95, 100, 105, 115, 112, 110, 97, 109, 101, 44, 32, 64, 102, 114, 111, 109, 95, 117, 115, 101, 114, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 99, 104, 97, 116, 109, 115, 103, 95, 116, 121, 112, 101, 44, 32, 64, 98, 111, 100, 121, 95, 120, 109, 108, 44, 32, 64, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114, 44, 32, 64, 99, 111, 110, 118, 111, 95, 105, 100, 44, 32, 64, 116, 121, 112, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64, 112, 107, 95, 105, 100, 44, 32, 64, 114, 101, 109, 111, 116, 101, 95, 105, 100, 44, 32, 64, 112, 97, 114, 101, 110, 116, 95, 105, 100, 44, 32, 64, 116, 105, 109, 101, 115, 116, 97, 109, 112, 95, 95, 109, 115, 44, 32, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 52, 44, 32, 48, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 78, 85, 76, 76, 44, 32, 78, 85, 76, 76, 44, 32, 50, 44, 32, 48, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 78, 32, 67, 79, 78, 70, 76, 73, 67, 84, 40, 112, 107, 95, 105, 100, 44, 32, 99, 111, 110, 118, 111, 95, 105, 100, 41, 32, 68, 79, 32, 85, 80, 68, 65, 84, 69, 32, 83, 69, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 116, 105, 109, 101, 115, 116, 97, 109, 112, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 97, 117, 116, 104, 111, 114, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 114, 111, 109, 95, 100, 105, 115, 112, 110, 97, 109, 101, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 102, 114, 111, 109, 95, 100, 105, 115, 112, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 114, 111, 109, 95, 117, 115, 101, 114, 110, 97, 109, 101, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 102, 114, 111, 109, 95, 117, 115, 101, 114, 110, 97, 109, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 109, 115, 103, 95, 116, 121, 112, 101, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 99, 104, 97, 116, 109, 115, 103, 95, 116, 121, 112, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 111, 100, 121, 95, 120, 109, 108, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 98, 111, 100, 121, 95, 120, 109, 108, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 116, 121, 112, 101, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 95, 95, 109, 115, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 116, 105, 109, 101, 115, 116, 97, 109, 112, 95, 95, 109, 115, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 101, 110, 116, 95, 105, 100, 32, 32, 32, 32, 32, 61, 32, 101, 120, 99, 108, 117, 100, 101, 100, 46, 112, 97, 114, 101, 110, 116, 95, 105, 100

.LS_6_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116

.LS_7_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 104, 97, 116, 110, 97, 109, 101

.LS_8_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 105, 109, 101, 115, 116, 97, 109, 112

.LS_9_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 97, 117, 116, 104, 111, 114

.LS_10_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 102, 114, 111, 109, 95, 117, 115, 101, 114, 110, 97, 109, 101

.LS_11_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 102, 114, 111, 109, 95, 100, 105, 115, 112, 110, 97, 109, 101

.LS_12_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 104, 97, 116, 109, 115, 103, 95, 116, 121, 112, 101

.LS_13_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 98, 111, 100, 121, 95, 120, 109, 108

.LS_14_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114

.LS_15_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 111, 110, 118, 111, 95, 105, 100

.LS_16_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 121, 112, 101

.LS_17_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 112, 107, 95, 105, 100

.LS_18_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 114, 101, 109, 111, 116, 101, 95, 105, 100

.LS_19_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 112, 97, 114, 101, 110, 116, 95, 105, 100

.LS_20_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 105, 109, 101, 115, 116, 97, 109, 112, 95, 95, 109, 115

.LN_21_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.DateTimeOffset"

.LN_22_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.DateTimeOffset"

.LS_23_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116

.LN_24_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int32"

.LS_25_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 104, 97, 116, 110, 97, 109, 101

.LN_26_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_27_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 105, 109, 101, 115, 116, 97, 109, 112

.LN_28_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int64"

.LS_29_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 97, 117, 116, 104, 111, 114

.LN_30_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_31_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 102, 114, 111, 109, 95, 117, 115, 101, 114, 110, 97, 109, 101

.LN_32_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_33_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 102, 114, 111, 109, 95, 100, 105, 115, 112, 110, 97, 109, 101

.LN_34_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_35_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 104, 97, 116, 109, 115, 103, 95, 116, 121, 112, 101

.LN_36_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int32"

.LS_37_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 98, 111, 100, 121, 95, 120, 109, 108

.LN_38_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_39_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114

.LN_40_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_41_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 111, 110, 118, 111, 95, 105, 100

.LN_42_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int64"

.LS_43_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 121, 112, 101

.LN_44_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int32"

.LS_45_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 112, 107, 95, 105, 100

.LN_46_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_47_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 114, 101, 109, 111, 116, 101, 95, 105, 100

.LN_48_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_49_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 112, 97, 114, 101, 110, 116, 95, 105, 100

.LN_50_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_51_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 105, 109, 101, 115, 116, 97, 109, 112, 95, 95, 109, 115

.LN_52_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int64"

.LN_53_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.DateTimeOffset"

.LN_54_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.DateTimeOffset"

.LS_55_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116

.LN_56_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int32"

.LS_57_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 104, 97, 116, 110, 97, 109, 101

.LN_58_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_59_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 105, 109, 101, 115, 116, 97, 109, 112

.LN_60_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int64"

.LS_61_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 97, 117, 116, 104, 111, 114

.LN_62_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_63_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 102, 114, 111, 109, 95, 117, 115, 101, 114, 110, 97, 109, 101

.LN_64_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_65_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 102, 114, 111, 109, 95, 100, 105, 115, 112, 110, 97, 109, 101

.LN_66_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_67_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 104, 97, 116, 109, 115, 103, 95, 116, 121, 112, 101

.LN_68_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int32"

.LS_69_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 98, 111, 100, 121, 95, 120, 109, 108

.LN_70_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_71_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114

.LN_72_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_73_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 111, 110, 118, 111, 95, 105, 100

.LN_74_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int64"

.LS_75_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 121, 112, 101

.LN_76_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int32"

.LS_77_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 112, 107, 95, 105, 100

.LN_78_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_79_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 114, 101, 109, 111, 116, 101, 95, 105, 100

.LN_80_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_81_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 112, 97, 114, 101, 110, 116, 95, 105, 100

.LN_82_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_83_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 105, 109, 101, 115, 116, 97, 109, 112, 95, 95, 109, 115

.LN_84_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int64"

.LN_85_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.DateTimeOffset"

.LN_86_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.DateTimeOffset"

.LS_87_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116

.LN_88_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int32"

.LS_89_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 104, 97, 116, 110, 97, 109, 101

.LN_90_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_91_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 105, 109, 101, 115, 116, 97, 109, 112

.LN_92_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int64"

.LS_93_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 97, 117, 116, 104, 111, 114

.LN_94_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_95_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 102, 114, 111, 109, 95, 117, 115, 101, 114, 110, 97, 109, 101

.LN_96_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_97_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 102, 114, 111, 109, 95, 100, 105, 115, 112, 110, 97, 109, 101

.LN_98_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_99_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 104, 97, 116, 109, 115, 103, 95, 116, 121, 112, 101

.LN_100_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int32"

.LS_101_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 98, 111, 100, 121, 95, 120, 109, 108

.LS_102_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114

.LN_103_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_104_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 111, 110, 118, 111, 95, 105, 100

.LN_105_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int64"

.LS_106_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 121, 112, 101

.LN_107_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int32"

.LS_108_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 112, 107, 95, 105, 100

.LN_109_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_110_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 114, 101, 109, 111, 116, 101, 95, 105, 100

.LN_111_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_112_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 112, 97, 114, 101, 110, 116, 95, 105, 100

.LN_113_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LS_114_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 116, 105, 109, 101, 115, 116, 97, 109, 112, 95, 95, 109, 115

.LN_115_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int64"

.LS_116_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 85, 80, 68, 65, 84, 69, 32, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 115, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 83, 69, 84, 32, 108, 97, 115, 116, 95, 109, 101, 115, 115, 97, 103, 101, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 61, 32, 40, 83, 69, 76, 69, 67, 84, 32, 105, 100, 32, 70, 82, 79, 77, 32, 77, 101, 115, 115, 97, 103, 101, 115, 32, 87, 72, 69, 82, 69, 32, 99, 111, 110, 118, 111, 95, 105, 100, 32, 61, 32, 64, 99, 111, 110, 118, 111, 95, 105, 100, 32, 79, 82, 68, 69, 82, 32, 66, 89, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 68, 69, 83, 67, 32, 76, 73, 77, 73, 84, 32, 49, 41, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 97, 99, 116, 105, 118, 105, 116, 121, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 61, 32, 64, 108, 97, 115, 116, 95, 97, 99, 116, 105, 118, 105, 116, 121, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 87, 72, 69, 82, 69, 32, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 32, 61, 32, 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 59

.LS_117_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 111, 110, 118, 111, 95, 105, 100

.LN_118_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int64"

.LS_119_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 108, 97, 115, 116, 95, 97, 99, 116, 105, 118, 105, 116, 121, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112

.LN_120_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "System.Int64"

.LS_121_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .short 64, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100

.LN_122_m_Skymu_Databases_DatabaseManager_MessagesTable_Write_gen_ref_ref:
    .asciz "Value"

.LN_0_m_Skymu_Databases_DatabaseManager_c_cctor_void:
    .asciz "Skymu.Databases.DatabaseManager/'<>c'"

.LN_1_m_Skymu_Databases_DatabaseManager_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_Databases_DatabaseManager_c_EnsureDatabaseVersion_b_28_0_void:
    .asciz "Skymu.Forms.Pages.Updater"

.LN_0_m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void:
    .asciz "wipe"

.LN_1_m_Skymu_Databases_DatabaseManager_c_DisplayClass28_0_EnsureDatabaseVersion_b_1_void:
    .asciz "dlg"

.LN_0_m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c:
    .asciz "invalidChars"

.LN_1_m_Skymu_Databases_DatabaseManager_c_DisplayClass29_0_SanitizeFolderName_b_0_c:
    .asciz "replacement"

.LN_0_m_Skymu_Databases_DatabaseManager_get_Accounts_void:
    .asciz "<Accounts>k__BackingField"

.LN_0_m_Skymu_Databases_DatabaseManager_set_Accounts_ref:
    .asciz "<Accounts>k__BackingField"

.LN_0_m_Skymu_Databases_DatabaseManager_get_Contacts_void:
    .asciz "<Contacts>k__BackingField"

.LN_0_m_Skymu_Databases_DatabaseManager_set_Contacts_ref:
    .asciz "<Contacts>k__BackingField"

.LN_0_m_Skymu_Databases_DatabaseManager_get_Conversations_void:
    .asciz "<Conversations>k__BackingField"

.LN_0_m_Skymu_Databases_DatabaseManager_set_Conversations_ref:
    .asciz "<Conversations>k__BackingField"

.LN_0_m_Skymu_Databases_DatabaseManager_get_Participants_void:
    .asciz "<Participants>k__BackingField"

.LN_0_m_Skymu_Databases_DatabaseManager_set_Participants_ref:
    .asciz "<Participants>k__BackingField"

.LN_0_m_Skymu_Databases_DatabaseManager_get_Messages_void:
    .asciz "<Messages>k__BackingField"

.LN_0_m_Skymu_Databases_DatabaseManager_set_Messages_ref:
    .asciz "<Messages>k__BackingField"

.LN_0_m_Skymu_Databases_DatabaseManager_get_Servers_void:
    .asciz "<Servers>k__BackingField"

.LN_0_m_Skymu_Databases_DatabaseManager_set_Servers_ref:
    .asciz "<Servers>k__BackingField"

.LS_0_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .short 83, 107, 121, 109, 117

.LN_1_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .asciz "Plugin"

.LS_2_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .short 95

.LS_3_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .short 109, 97, 105, 110, 46, 100, 98

.LN_4_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .asciz "DbPath"

.LS_5_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .short 99, 111, 110, 102, 105, 103, 46, 120, 109, 108

.LN_6_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .asciz "Skymu.Databases.DatabaseManager/AccountsTable"

.LN_7_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .asciz "Skymu.Databases.DatabaseManager/ContactsTable"

.LN_8_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .asciz "Skymu.Databases.DatabaseManager/ConversationsTable"

.LN_9_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .asciz "Skymu.Databases.DatabaseManager/ParticipantsTable"

.LN_10_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .asciz "Skymu.Databases.DatabaseManager/MessagesTable"

.LN_11_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .asciz "Skymu.Databases.DatabaseManager/ServersTable"

.LS_12_m_Skymu_Databases_DatabaseManager_ctor_ref_ref:
    .short 80, 82, 65, 71, 77, 65, 32, 106, 111, 117, 114, 110, 97, 108, 95, 109, 111, 100, 101, 61, 68, 69, 76, 69, 84, 69, 59

.LN_0_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref:
    .asciz "Skymu.Databases.DatabaseManager/'<>c__DisplayClass29_0'"

.LN_1_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref:
    .asciz "replacement"

.LS_2_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref:
    .short 71, 101, 110, 101, 114, 105, 99, 65, 99, 99, 111, 117, 110, 116

.LN_3_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref:
    .asciz "invalidChars"

.LN_4_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref:
    .asciz "char>"

.LS_5_m_Skymu_Databases_DatabaseManager_SanitizeFolderName_ref_ref:
    .short 71, 101, 110, 101, 114, 105, 99, 65, 99, 99, 111, 117, 110, 116

.LN_0_m_Skymu_Databases_DatabaseManager_BuildContactMap_void:
    .asciz "_contactMap"

.LN_1_m_Skymu_Databases_DatabaseManager_BuildContactMap_void:
    .asciz "Yggdrasil.Models.User>"

.LN_2_m_Skymu_Databases_DatabaseManager_BuildContactMap_void:
    .asciz "_contactMap"

.LN_3_m_Skymu_Databases_DatabaseManager_BuildContactMap_void:
    .asciz "_contactMap"

.LS_0_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref:
    .short 83, 107, 121, 109, 117, 68, 97, 116, 97, 98, 97, 115, 101

.LS_1_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref:
    .short 68, 97, 116, 97, 98, 97, 115, 101, 86, 101, 114, 115, 105, 111, 110

.LN_2_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref:
    .asciz "System.Int32"

.LN_3_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref:
    .asciz "System.Xml.Linq.XElement"

.LN_4_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref:
    .asciz "System.Xml.Linq.XElement"

.LN_5_m_Skymu_Databases_DatabaseManager_WriteConfigInternal_ref:
    .asciz "System.Xml.Linq.XDocument"

.LN_0_m_Skymu_Databases_DatabaseManager_CreateConnection_void:
    .asciz "DbPath"

.LS_1_m_Skymu_Databases_DatabaseManager_CreateConnection_void:
    .short 68, 97, 116, 97, 32, 83, 111, 117, 114, 99, 101, 61

.LN_2_m_Skymu_Databases_DatabaseManager_CreateConnection_void:
    .asciz "DbPath"

.LN_3_m_Skymu_Databases_DatabaseManager_CreateConnection_void:
    .asciz "Microsoft.Data.Sqlite.SqliteConnection"

.LS_0_m_Skymu_Databases_DatabaseManager_ConvertIdentifier_ref:
    .short 105, 100, 45

.LS_0_m_Skymu_Databases_DatabaseManager_UnconvertIdentifier_ref:
    .short 105, 100, 45

.LS_0_m_Skymu_Databases_DatabaseManager_EnsureTablesInternal_ref:
    .short 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 65, 99, 99, 111, 117, 110, 116, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 119, 100, 99, 104, 97, 110, 103, 101, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 111, 103, 111, 117, 116, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 109, 109, 105, 116, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 117, 103, 103, 101, 115, 116, 101, 100, 95, 115, 107, 121, 112, 101, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 107, 121, 112, 101, 111, 117, 116, 95, 98, 97, 108, 97, 110, 99, 101, 95, 99, 117, 114, 114, 101, 110, 99, 121, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 107, 121, 112, 101, 111, 117, 116, 95, 98, 97, 108, 97, 110, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 107, 121, 112, 101, 111, 117, 116, 95, 112, 114, 101, 99, 105, 115, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 107, 121, 112, 101, 105, 110, 95, 110, 117, 109, 98, 101, 114, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 117, 98, 115, 99, 114, 105, 112, 116, 105, 111, 110, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 98, 108, 115, 121, 110, 99, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 116, 97, 99, 116, 115, 115, 121, 110, 99, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 102, 102, 108, 105, 110, 101, 95, 99, 97, 108, 108, 102, 111, 114, 119, 97, 114, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 107, 121, 112, 101, 95, 99, 97, 108, 108, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 115, 116, 110, 95, 99, 97, 108, 108, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 117, 100, 100, 121, 99, 111, 117, 110, 116, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 122, 111, 110, 101, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 119, 101, 98, 112, 114, 101, 115, 101, 110, 99, 101, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 104, 111, 110, 101, 110, 117, 109, 98, 101, 114, 115, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 111, 105, 99, 101, 109, 97, 105, 108, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 100, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 111, 112, 116, 101, 100, 111, 117, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 114, 118, 105, 99, 101, 95, 112, 114, 111, 118, 105, 100, 101, 114, 95, 105, 110, 102, 111, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 103, 105, 115, 116, 114, 97, 116, 105, 111, 110, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 114, 95, 111, 102, 95, 111, 116, 104, 101, 114, 95, 105, 110, 115, 116, 97, 110, 99, 101, 115, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 99, 104, 97, 110, 110, 101, 108, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 108, 97, 109, 105, 110, 103, 111, 95, 120, 109, 112, 112, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 101, 100, 101, 114, 97, 116, 101, 100, 95, 112, 114, 101, 115, 101, 110, 99, 101, 95, 112, 111, 108, 105, 99, 121, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 105, 100, 95, 109, 101, 109, 98, 101, 114, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 111, 97, 109, 105, 110, 103, 95, 104, 105, 115, 116, 111, 114, 121, 95, 101, 110, 97, 98, 108, 101, 100, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 98, 114, 97, 110, 100, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 104, 111, 114, 116, 99, 105, 114, 99, 117, 105, 116, 95, 115, 121, 110, 99, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 105, 103, 110, 105, 110, 95, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 97, 100, 95, 114, 101, 99, 101, 105, 112, 116, 95, 111, 112, 116, 111, 117, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 105, 100, 100, 101, 110, 95, 101, 120, 112, 114, 101, 115, 115, 105, 111, 110, 95, 116, 97, 98, 115, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 119, 110, 101, 114, 95, 117, 110, 100, 101, 114, 95, 108, 101, 103, 97, 108, 95, 97, 103, 101, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 107, 121, 112, 101, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 115, 116, 110, 110, 117, 109, 98, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 117, 108, 108, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 105, 114, 116, 104, 100, 97, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 101, 110, 100, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 110, 103, 117, 97, 103, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 117, 110, 116, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 118, 105, 110, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 104, 111, 110, 101, 95, 104, 111, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 104, 111, 110, 101, 95, 111, 102, 102, 105, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 104, 111, 110, 101, 95, 109, 111, 98, 105, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 109, 97, 105, 108, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 111, 109, 101, 112, 97, 103, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 98, 111, 117, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 102, 105, 108, 101, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 99, 101, 105, 118, 101, 100, 95, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 102, 114, 101, 115, 104, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 105, 118, 101, 110, 95, 97, 117, 116, 104, 108, 101, 118, 101, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 108, 105, 97, 115, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 111, 111, 100, 95, 116, 101, 120, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 122, 111, 110, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 114, 111, 102, 95, 97, 117, 116, 104, 101, 100, 95, 98, 117, 100, 100, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 112, 99, 111, 117, 110, 116, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 105, 108, 97, 98, 105, 108, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 111, 110, 108, 105, 110, 101, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 112, 97, 98, 105, 108, 105, 116, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 115, 112, 101, 101, 100, 100, 105, 97, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 117, 115, 101, 100, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 95, 99, 111, 117, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 99, 111, 109, 109, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 108, 101, 114, 116, 115, 116, 114, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 111, 111, 100, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 105, 99, 104, 95, 109, 111, 111, 100, 95, 116, 101, 120, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 121, 110, 99, 101, 100, 95, 101, 109, 97, 105, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 116, 95, 97, 118, 97, 105, 108, 97, 98, 105, 108, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 105, 111, 110, 115, 95, 99, 104, 97, 110, 103, 101, 95, 102, 117, 116, 117, 114, 101, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 115, 97, 95, 112, 109, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100, 95, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 110, 116, 95, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 110, 116, 95, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 95, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 110, 116, 95, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 95, 115, 101, 114, 105, 97, 108, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 117, 100, 100, 121, 98, 108, 111, 98, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 98, 108, 95, 102, 117, 116, 117, 114, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 111, 100, 101, 95, 99, 97, 112, 97, 98, 105, 108, 105, 116, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 111, 100, 101, 95, 99, 97, 112, 97, 98, 105, 108, 105, 116, 105, 101, 115, 95, 97, 110, 100, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 118, 111, 107, 101, 100, 95, 97, 117, 116, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 100, 100, 101, 100, 95, 105, 110, 95, 115, 104, 97, 114, 101, 100, 95, 103, 114, 111, 117, 112, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 95, 115, 104, 97, 114, 101, 100, 95, 103, 114, 111, 117, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 95, 104, 105, 115, 116, 111, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 102, 105, 108, 101, 95, 97, 116, 116, 97, 99, 104, 109, 101, 110, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 99, 107, 95, 118, 101, 114, 115, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 102, 102, 108, 105, 110, 101, 95, 97, 117, 116, 104, 114, 101, 113, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 101, 114, 105, 102, 105, 101, 100, 95, 101, 109, 97, 105, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 101, 114, 105, 102, 105, 101, 100, 95, 99, 111, 109, 112, 97, 110, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 115, 101, 115, 95, 106, 99, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 111, 114, 119, 97, 114, 100, 95, 115, 116, 97, 114, 116, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 108, 117, 103, 105, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 85, 78, 73, 81, 85, 69, 40, 115, 107, 121, 112, 101, 110, 97, 109, 101, 44, 32, 112, 108, 117, 103, 105, 110, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 65, 108, 101, 114, 116, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 117, 110, 115, 101, 101, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 101, 118, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 104, 105, 115, 116, 111, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 104, 101, 97, 100, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 108, 111, 103, 111, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 99, 111, 110, 116, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 102, 111, 111, 116, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 116, 97, 95, 101, 120, 112, 105, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 104, 101, 97, 100, 101, 114, 95, 99, 97, 112, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 104, 101, 97, 100, 101, 114, 95, 116, 105, 116, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 104, 101, 97, 100, 101, 114, 95, 115, 117, 98, 106, 101, 99, 116, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 104, 101, 97, 100, 101, 114, 95, 99, 97, 110, 99, 101, 108, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 104, 101, 97, 100, 101, 114, 95, 108, 97, 116, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 98, 117, 116, 116, 111, 110, 95, 99, 97, 112, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 98, 117, 116, 116, 111, 110, 95, 117, 114, 105, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 119, 105, 110, 100, 111, 119, 95, 115, 105, 122, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 104, 105, 100, 101, 95, 102, 114, 111, 109, 95, 104, 105, 115, 116, 111, 114, 121, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 109, 115, 103, 95, 103, 117, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 118, 101, 110, 116, 95, 102, 108, 97, 103, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 67, 97, 108, 108, 72, 97, 110, 100, 108, 101, 114, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 67, 97, 108, 108, 77, 101, 109, 98, 101, 114, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 115, 112, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 110, 103, 117, 97, 103, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 108, 108, 95, 100, 117, 114, 97, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 105, 99, 101, 95, 112, 101, 114, 95, 109, 105, 110, 117, 116, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 105, 99, 101, 95, 112, 114, 101, 99, 105, 115, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 105, 99, 101, 95, 99, 117, 114, 114, 101, 110, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 121, 109, 101, 110, 116, 95, 99, 97, 116, 101, 103, 111, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 111, 117, 110, 100, 101, 114, 114, 111, 114, 95, 99, 111, 100, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 111, 117, 110, 100, 108, 101, 118, 101, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 115, 116, 110, 95, 115, 116, 97, 116, 117, 115, 116, 101, 120, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 115, 116, 110, 95, 102, 101, 101, 100, 98, 97, 99, 107, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 111, 114, 119, 97, 114, 100, 95, 116, 97, 114, 103, 101, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 111, 114, 119, 97, 114, 100, 101, 100, 95, 98, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 98, 117, 103, 105, 110, 102, 111, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 105, 100, 101, 111, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 97, 114, 103, 101, 116, 95, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 105, 107, 101, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 114, 101, 97, 100, 95, 111, 110, 108, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 113, 117, 97, 108, 105, 116, 121, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 108, 108, 95, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 114, 97, 110, 115, 102, 101, 114, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 114, 97, 110, 115, 102, 101, 114, 95, 97, 99, 116, 105, 118, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 114, 97, 110, 115, 102, 101, 114, 114, 101, 100, 95, 98, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 114, 97, 110, 115, 102, 101, 114, 114, 101, 100, 95, 116, 111, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 117, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 101, 120, 116, 95, 114, 101, 100, 105, 97, 108, 95, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 114, 111, 102, 95, 114, 101, 100, 105, 97, 108, 115, 95, 100, 111, 110, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 114, 111, 102, 95, 114, 101, 100, 105, 97, 108, 115, 95, 108, 101, 102, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 114, 97, 110, 115, 102, 101, 114, 95, 116, 111, 112, 105, 99, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 97, 108, 95, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 114, 116, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 99, 111, 110, 102, 101, 114, 101, 110, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 113, 117, 97, 108, 105, 116, 121, 95, 112, 114, 111, 98, 108, 101, 109, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 101, 110, 116, 105, 116, 121, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 117, 110, 116, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 114, 101, 97, 116, 105, 111, 110, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 115, 95, 120, 109, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 114, 101, 109, 105, 117, 109, 95, 118, 105, 100, 101, 111, 95, 115, 112, 111, 110, 115, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 109, 117, 108, 116, 105, 112, 97, 114, 116, 121, 95, 118, 105, 100, 101, 111, 95, 99, 97, 112, 97, 98, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 99, 111, 118, 101, 114, 121, 95, 105, 110, 95, 112, 114, 111, 103, 114, 101, 115, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 108, 108, 98, 97, 99, 107, 95, 105, 110, 95, 112, 114, 111, 103, 114, 101, 115, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 111, 110, 115, 101, 95, 119, 111, 114, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 114, 95, 111, 102, 95, 100, 101, 108, 105, 118, 101, 114, 101, 100, 95, 112, 117, 115, 104, 95, 110, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 115, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 108, 108, 95, 115, 101, 115, 115, 105, 111, 110, 95, 103, 117, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 101, 114, 115, 105, 111, 110, 95, 115, 116, 114, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 112, 95, 97, 100, 100, 114, 101, 115, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 118, 105, 100, 101, 111, 95, 99, 111, 100, 101, 99, 95, 99, 111, 109, 112, 97, 116, 105, 98, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 114, 111, 117, 112, 95, 99, 97, 108, 108, 105, 110, 103, 95, 99, 97, 112, 97, 98, 105, 108, 105, 116, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 114, 105, 95, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 115, 101, 97, 109, 108, 101, 115, 115, 108, 121, 95, 117, 112, 103, 114, 97, 100, 101, 100, 95, 99, 97, 108, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 111, 105, 99, 101, 99, 104, 97, 110, 110, 101, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 105, 100, 101, 111, 95, 99, 111, 117, 110, 116, 95, 99, 104, 97, 110, 103, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 97, 99, 116, 105, 118, 101, 95, 115, 112, 101, 97, 107, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 111, 109, 105, 110, 97, 110, 116, 95, 115, 112, 101, 97, 107, 101, 114, 95, 114, 97, 110, 107, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 105, 99, 105, 112, 97, 110, 116, 95, 115, 112, 111, 110, 115, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 116, 101, 110, 116, 95, 115, 104, 97, 114, 105, 110, 103, 95, 114, 111, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 110, 100, 112, 111, 105, 110, 116, 95, 100, 101, 116, 97, 105, 108, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 107, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 108, 108, 95, 100, 98, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 105, 109, 101, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 103, 104, 116, 95, 119, 101, 105, 103, 104, 116, 95, 109, 101, 101, 116, 105, 110, 103, 95, 114, 111, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 112, 97, 98, 105, 108, 105, 116, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 110, 100, 112, 111, 105, 110, 116, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 99, 99, 101, 112, 116, 101, 100, 95, 98, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 115, 101, 114, 118, 101, 114, 95, 109, 117, 116, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 100, 109, 105, 116, 95, 102, 97, 105, 108, 117, 114, 101, 95, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 67, 97, 108, 108, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 101, 103, 105, 110, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 111, 112, 105, 99, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 109, 117, 116, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 117, 110, 115, 101, 101, 110, 95, 109, 105, 115, 115, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 111, 115, 116, 95, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 104, 111, 115, 116, 108, 101, 115, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 105, 107, 101, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 117, 114, 97, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 111, 117, 110, 100, 108, 101, 118, 101, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 99, 116, 105, 118, 101, 95, 109, 101, 109, 98, 101, 114, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 97, 99, 116, 105, 118, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 105, 100, 101, 111, 95, 100, 105, 115, 97, 98, 108, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 106, 111, 105, 110, 101, 100, 95, 101, 120, 105, 115, 116, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 114, 118, 101, 114, 95, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 97, 95, 105, 110, 112, 117, 116, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 105, 110, 99, 111, 109, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 99, 111, 110, 102, 101, 114, 101, 110, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 111, 110, 95, 104, 111, 108, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 114, 116, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 113, 117, 97, 108, 105, 116, 121, 95, 112, 114, 111, 98, 108, 101, 109, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 117, 114, 114, 101, 110, 116, 95, 118, 105, 100, 101, 111, 95, 97, 117, 100, 105, 101, 110, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 101, 109, 105, 117, 109, 95, 118, 105, 100, 101, 111, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 101, 109, 105, 117, 109, 95, 118, 105, 100, 101, 111, 95, 105, 115, 95, 103, 114, 97, 99, 101, 95, 112, 101, 114, 105, 111, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 114, 101, 109, 105, 117, 109, 95, 118, 105, 100, 101, 111, 95, 115, 112, 111, 110, 115, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 101, 109, 105, 117, 109, 95, 118, 105, 100, 101, 111, 95, 115, 112, 111, 110, 115, 111, 114, 95, 108, 105, 115, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 101, 99, 104, 110, 111, 108, 111, 103, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 97, 120, 95, 118, 105, 100, 101, 111, 99, 111, 110, 102, 99, 97, 108, 108, 95, 112, 97, 114, 116, 105, 99, 105, 112, 97, 110, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 105, 109, 97, 108, 95, 114, 101, 109, 111, 116, 101, 95, 118, 105, 100, 101, 111, 115, 95, 105, 110, 95, 99, 111, 110, 102, 101, 114, 101, 110, 99, 101, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 104, 114, 101, 97, 100, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 103, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 97, 116, 97, 99, 104, 97, 110, 110, 101, 108, 95, 111, 98, 106, 101, 99, 116, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 110, 100, 112, 111, 105, 110, 116, 95, 100, 101, 116, 97, 105, 108, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 108, 108, 101, 114, 95, 109, 114, 105, 95, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 109, 98, 101, 114, 95, 99, 111, 117, 110, 116, 95, 99, 104, 97, 110, 103, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 114, 97, 110, 115, 102, 101, 114, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 114, 97, 110, 115, 102, 101, 114, 95, 102, 97, 105, 108, 117, 114, 101, 95, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 108, 100, 95, 109, 101, 109, 98, 101, 114, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 104, 97, 110, 100, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 100, 105, 115, 112, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 99, 111, 100, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 115, 116, 110, 95, 110, 117, 109, 98, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 108, 100, 95, 100, 117, 114, 97, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 102, 95, 112, 97, 114, 116, 105, 99, 105, 112, 97, 110, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 115, 116, 110, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 109, 98, 101, 114, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 118, 95, 100, 98, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 115, 101, 114, 118, 101, 114, 95, 109, 117, 116, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 111, 114, 119, 97, 114, 100, 105, 110, 103, 95, 100, 101, 115, 116, 105, 110, 97, 116, 105, 111, 110, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 99, 111, 109, 105, 110, 103, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 110, 98, 101, 104, 97, 108, 102, 111, 102, 95, 109, 114, 105, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 114, 97, 110, 115, 102, 101, 114, 111, 114, 95, 109, 114, 105, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 103, 104, 116, 95, 119, 101, 105, 103, 104, 116, 95, 109, 101, 101, 116, 105, 110, 103, 95, 99, 111, 117, 110, 116, 95, 99, 104, 97, 110, 103, 101, 100, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 67, 104, 97, 116, 77, 101, 109, 98, 101, 114, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 111, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 97, 99, 116, 105, 118, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 117, 114, 95, 97, 99, 116, 105, 118, 105, 116, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 100, 100, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 67, 104, 97, 116, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 100, 100, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 111, 115, 116, 101, 114, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 105, 99, 105, 112, 97, 110, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 111, 112, 105, 99, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 99, 116, 105, 118, 101, 109, 101, 109, 98, 101, 114, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 114, 105, 101, 110, 100, 108, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 108, 101, 114, 116, 115, 116, 114, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 98, 111, 111, 107, 109, 97, 114, 107, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 99, 116, 105, 118, 105, 116, 121, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 121, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 115, 115, 119, 111, 114, 100, 104, 105, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 105, 111, 110, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 99, 116, 117, 114, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 117, 105, 100, 101, 108, 105, 110, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 121, 114, 111, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 112, 112, 108, 105, 99, 97, 110, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 97, 110, 110, 101, 100, 95, 117, 115, 101, 114, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 111, 112, 105, 99, 95, 120, 109, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 97, 109, 101, 95, 116, 101, 120, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 110, 99, 111, 110, 115, 117, 109, 101, 100, 95, 115, 117, 112, 112, 114, 101, 115, 115, 101, 100, 95, 109, 115, 103, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 110, 99, 111, 110, 115, 117, 109, 101, 100, 95, 110, 111, 114, 109, 97, 108, 95, 109, 115, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 110, 99, 111, 110, 115, 117, 109, 101, 100, 95, 101, 108, 101, 118, 97, 116, 101, 100, 95, 109, 115, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 110, 99, 111, 110, 115, 117, 109, 101, 100, 95, 109, 115, 103, 95, 118, 111, 105, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 101, 95, 100, 97, 116, 97, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 102, 101, 115, 105, 103, 110, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 99, 104, 97, 110, 103, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 105, 114, 115, 116, 95, 117, 110, 114, 101, 97, 100, 95, 109, 101, 115, 115, 97, 103, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 107, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 98, 112, 97, 116, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 112, 108, 105, 116, 95, 102, 114, 105, 101, 110, 100, 108, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 118, 95, 100, 98, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 67, 111, 110, 116, 97, 99, 116, 71, 114, 111, 117, 112, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 95, 111, 108, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 114, 111, 102, 99, 111, 110, 116, 97, 99, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 114, 111, 102, 99, 111, 110, 116, 97, 99, 116, 115, 95, 111, 110, 108, 105, 110, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 117, 115, 116, 111, 109, 95, 103, 114, 111, 117, 112, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 111, 99, 105, 97, 116, 101, 100, 95, 99, 104, 97, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 112, 111, 115, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 109, 98, 101, 114, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 98, 108, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 98, 108, 95, 98, 108, 111, 98, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 105, 120, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 101, 112, 95, 115, 104, 97, 114, 101, 100, 103, 114, 111, 117, 112, 95, 99, 111, 110, 116, 97, 99, 116, 115, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 105, 115, 95, 104, 105, 100, 100, 101, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 115, 111, 114, 116, 111, 114, 100, 101, 114, 95, 118, 97, 108, 117, 101, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 105, 115, 95, 101, 120, 112, 97, 110, 100, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 105, 118, 101, 110, 95, 115, 111, 114, 116, 111, 114, 100, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 98, 99, 104, 95, 103, 117, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 67, 111, 110, 116, 97, 99, 116, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 107, 121, 112, 101, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 115, 116, 110, 110, 117, 109, 98, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 108, 105, 97, 115, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 117, 108, 108, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 105, 114, 116, 104, 100, 97, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 101, 110, 100, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 110, 103, 117, 97, 103, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 117, 110, 116, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 118, 105, 110, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 104, 111, 110, 101, 95, 104, 111, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 104, 111, 110, 101, 95, 111, 102, 102, 105, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 104, 111, 110, 101, 95, 109, 111, 98, 105, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 109, 97, 105, 108, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 97, 115, 104, 101, 100, 95, 101, 109, 97, 105, 108, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 111, 109, 101, 112, 97, 103, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 98, 111, 117, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 105, 109, 97, 103, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 111, 111, 100, 95, 116, 101, 120, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 105, 99, 104, 95, 109, 111, 111, 100, 95, 116, 101, 120, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 122, 111, 110, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 112, 97, 98, 105, 108, 105, 116, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 102, 105, 108, 101, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 114, 111, 102, 95, 97, 117, 116, 104, 101, 100, 95, 98, 117, 100, 100, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 112, 99, 111, 117, 110, 116, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 111, 111, 100, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 99, 101, 105, 118, 101, 100, 95, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 111, 110, 108, 105, 110, 101, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 105, 108, 97, 98, 105, 108, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 102, 114, 101, 115, 104, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 105, 118, 101, 110, 95, 97, 117, 116, 104, 108, 101, 118, 101, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 115, 112, 101, 101, 100, 100, 105, 97, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 99, 111, 109, 109, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 108, 101, 114, 116, 115, 116, 114, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 117, 115, 101, 100, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 95, 99, 111, 117, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 112, 104, 111, 110, 101, 49, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 112, 104, 111, 110, 101, 49, 95, 108, 97, 98, 101, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 112, 104, 111, 110, 101, 50, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 112, 104, 111, 110, 101, 50, 95, 108, 97, 98, 101, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 112, 104, 111, 110, 101, 51, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 101, 100, 95, 112, 104, 111, 110, 101, 51, 95, 108, 97, 98, 101, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 117, 100, 100, 121, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 111, 112, 117, 108, 97, 114, 105, 116, 121, 95, 111, 114, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 101, 114, 110, 97, 108, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 101, 114, 110, 97, 108, 95, 115, 121, 115, 116, 101, 109, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 98, 108, 111, 99, 107, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 111, 114, 105, 122, 97, 116, 105, 111, 110, 95, 99, 101, 114, 116, 105, 102, 105, 99, 97, 116, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 101, 114, 116, 105, 102, 105, 99, 97, 116, 101, 95, 115, 101, 110, 100, 95, 99, 111, 117, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 99, 99, 111, 117, 110, 116, 95, 109, 111, 100, 105, 102, 105, 99, 97, 116, 105, 111, 110, 95, 115, 101, 114, 105, 97, 108, 95, 110, 114, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 97, 118, 101, 100, 95, 100, 105, 114, 101, 99, 116, 111, 114, 121, 95, 98, 108, 111, 98, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 114, 95, 111, 102, 95, 98, 117, 100, 100, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 114, 118, 101, 114, 95, 115, 121, 110, 99, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 116, 97, 99, 116, 108, 105, 115, 116, 95, 116, 114, 97, 99, 107, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 117, 115, 101, 100, 95, 110, 101, 116, 119, 111, 114, 107, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100, 95, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 110, 116, 95, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 110, 116, 95, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 95, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 110, 116, 95, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 95, 115, 101, 114, 105, 97, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 117, 100, 100, 121, 98, 108, 111, 98, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 98, 108, 95, 102, 117, 116, 117, 114, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 111, 100, 101, 95, 99, 97, 112, 97, 98, 105, 108, 105, 116, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 118, 111, 107, 101, 100, 95, 97, 117, 116, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 100, 100, 101, 100, 95, 105, 110, 95, 115, 104, 97, 114, 101, 100, 95, 103, 114, 111, 117, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 95, 115, 104, 97, 114, 101, 100, 95, 103, 114, 111, 117, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 95, 104, 105, 115, 116, 111, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 102, 105, 108, 101, 95, 97, 116, 116, 97, 99, 104, 109, 101, 110, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 99, 107, 95, 118, 101, 114, 115, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 102, 102, 108, 105, 110, 101, 95, 97, 117, 116, 104, 114, 101, 113, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 111, 100, 101, 95, 99, 97, 112, 97, 98, 105, 108, 105, 116, 105, 101, 115, 95, 97, 110, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 95, 99, 114, 99, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 95, 115, 114, 99, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 111, 112, 95, 115, 99, 111, 114, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 95, 110, 111, 100, 101, 105, 110, 102, 111, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 97, 105, 110, 95, 112, 104, 111, 110, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 110, 105, 102, 105, 101, 100, 95, 115, 101, 114, 118, 97, 110, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 104, 111, 110, 101, 95, 104, 111, 109, 101, 95, 110, 111, 114, 109, 97, 108, 105, 122, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 104, 111, 110, 101, 95, 111, 102, 102, 105, 99, 101, 95, 110, 111, 114, 109, 97, 108, 105, 122, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 104, 111, 110, 101, 95, 109, 111, 98, 105, 108, 101, 95, 110, 111, 114, 109, 97, 108, 105, 122, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 110, 116, 95, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 95, 105, 110, 105, 116, 109, 101, 116, 104, 111, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 114, 101, 113, 95, 105, 110, 105, 116, 109, 101, 116, 104, 111, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 101, 114, 105, 102, 105, 101, 100, 95, 101, 109, 97, 105, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 101, 114, 105, 102, 105, 101, 100, 95, 99, 111, 109, 112, 97, 110, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 110, 116, 95, 97, 117, 116, 104, 114, 101, 113, 117, 101, 115, 116, 95, 101, 120, 116, 114, 97, 115, 98, 105, 116, 109, 97, 115, 107, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 105, 100, 95, 99, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 115, 101, 101, 110, 95, 98, 105, 114, 116, 104, 100, 97, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 115, 109, 115, 95, 116, 97, 114, 103, 101, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 101, 120, 116, 101, 114, 110, 97, 108, 95, 100, 97, 116, 97, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 97, 117, 116, 111, 95, 98, 117, 100, 100, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 114, 111, 117, 112, 95, 109, 101, 109, 98, 101, 114, 115, 104, 105, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 109, 111, 98, 105, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 116, 114, 117, 115, 116, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 117, 114, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 105, 114, 115, 116, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 101, 116, 119, 111, 114, 107, 95, 97, 118, 97, 105, 108, 97, 98, 105, 108, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 117, 114, 108, 95, 110, 101, 119, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 104, 105, 114, 101, 115, 117, 114, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 118, 97, 116, 97, 114, 95, 104, 105, 114, 101, 115, 117, 114, 108, 95, 110, 101, 119, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 102, 105, 108, 101, 95, 106, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 102, 105, 108, 101, 95, 101, 116, 97, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 114, 98, 108, 111, 98, 95, 108, 97, 115, 116, 95, 115, 101, 97, 114, 99, 104, 95, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 117, 116, 117, 97, 108, 95, 102, 114, 105, 101, 110, 100, 95, 99, 111, 117, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 85, 78, 73, 81, 85, 69, 40, 115, 107, 121, 112, 101, 110, 97, 109, 101, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 67, 111, 110, 116, 101, 110, 116, 83, 104, 97, 114, 105, 110, 103, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 108, 108, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 104, 97, 114, 105, 110, 103, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 99, 111, 100, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 115, 117, 98, 99, 111, 100, 101, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 86, 105, 101, 119, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 105, 101, 119, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 32, 85, 78, 73, 81, 85, 69, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 104, 111, 115, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 105, 115, 95, 104, 111, 115, 116, 108, 101, 115, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 99, 97, 108, 108, 95, 116, 101, 99, 104, 110, 111, 108, 111, 103, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 105, 109, 97, 108, 95, 114, 101, 109, 111, 116, 101, 95, 118, 105, 100, 101, 111, 115, 95, 105, 110, 95, 99, 111, 110, 102, 101, 114, 101, 110, 99, 101, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 115, 116, 97, 114, 116, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 105, 115, 95, 109, 117, 116, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 97, 120, 95, 118, 105, 100, 101, 111, 99, 111, 110, 102, 99, 97, 108, 108, 95, 112, 97, 114, 116, 105, 99, 105, 112, 97, 110, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 108, 101, 114, 116, 95, 115, 116, 114, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 98, 111, 111, 107, 109, 97, 114, 107, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 98, 108, 111, 99, 107, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 105, 118, 101, 110, 95, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 111, 99, 97, 108, 95, 108, 105, 118, 101, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 98, 111, 120, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 98, 111, 120, 95, 109, 101, 115, 115, 97, 103, 101, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 109, 101, 115, 115, 97, 103, 101, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 110, 99, 111, 110, 115, 117, 109, 101, 100, 95, 115, 117, 112, 112, 114, 101, 115, 115, 101, 100, 95, 109, 101, 115, 115, 97, 103, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 110, 99, 111, 110, 115, 117, 109, 101, 100, 95, 110, 111, 114, 109, 97, 108, 95, 109, 101, 115, 115, 97, 103, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 110, 99, 111, 110, 115, 117, 109, 101, 100, 95, 101, 108, 101, 118, 97, 116, 101, 100, 95, 109, 101, 115, 115, 97, 103, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 110, 99, 111, 110, 115, 117, 109, 101, 100, 95, 109, 101, 115, 115, 97, 103, 101, 115, 95, 118, 111, 105, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 99, 116, 105, 118, 101, 95, 118, 109, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 116, 101, 120, 116, 95, 104, 111, 114, 105, 122, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 115, 117, 109, 112, 116, 105, 111, 110, 95, 104, 111, 114, 105, 122, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 115, 117, 109, 112, 116, 105, 111, 110, 95, 104, 111, 114, 105, 122, 111, 110, 95, 95, 109, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 97, 99, 116, 105, 118, 105, 116, 121, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 99, 116, 105, 118, 101, 95, 105, 110, 118, 111, 105, 99, 101, 95, 109, 101, 115, 115, 97, 103, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 112, 97, 119, 110, 101, 100, 95, 102, 114, 111, 109, 95, 99, 111, 110, 118, 111, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 110, 110, 101, 100, 95, 111, 114, 100, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 114, 101, 97, 116, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 114, 101, 97, 116, 105, 111, 110, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 121, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 95, 106, 111, 105, 110, 105, 110, 103, 95, 101, 110, 97, 98, 108, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 95, 109, 111, 100, 101, 114, 97, 116, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 95, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 95, 101, 110, 116, 114, 121, 95, 108, 101, 118, 101, 108, 95, 114, 97, 110, 107, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 95, 100, 105, 115, 99, 108, 111, 115, 101, 95, 104, 105, 115, 116, 111, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 95, 104, 105, 115, 116, 111, 114, 121, 95, 108, 105, 109, 105, 116, 95, 105, 110, 95, 100, 97, 121, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 95, 97, 100, 109, 105, 110, 95, 111, 110, 108, 121, 95, 97, 99, 116, 105, 118, 105, 116, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 115, 115, 119, 111, 114, 100, 104, 105, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 116, 97, 95, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 116, 97, 95, 116, 111, 112, 105, 99, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 116, 97, 95, 103, 117, 105, 100, 101, 108, 105, 110, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 116, 97, 95, 112, 105, 99, 116, 117, 114, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 99, 116, 117, 114, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 50, 112, 95, 109, 105, 103, 114, 97, 116, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 105, 103, 114, 97, 116, 105, 111, 110, 95, 105, 110, 115, 116, 114, 117, 99, 116, 105, 111, 110, 115, 95, 112, 111, 115, 116, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 101, 109, 105, 117, 109, 95, 118, 105, 100, 101, 111, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 101, 109, 105, 117, 109, 95, 118, 105, 100, 101, 111, 95, 105, 115, 95, 103, 114, 97, 99, 101, 95, 112, 101, 114, 105, 111, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 117, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 116, 97, 95, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 101, 109, 105, 117, 109, 95, 118, 105, 100, 101, 111, 95, 115, 112, 111, 110, 115, 111, 114, 95, 108, 105, 115, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 99, 114, 95, 99, 97, 108, 108, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 95, 100, 98, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 105, 115, 116, 111, 114, 121, 95, 104, 111, 114, 105, 122, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 105, 115, 116, 111, 114, 121, 95, 115, 121, 110, 99, 95, 115, 116, 97, 116, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 104, 114, 101, 97, 100, 95, 118, 101, 114, 115, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 115, 117, 109, 112, 116, 105, 111, 110, 95, 104, 111, 114, 105, 122, 111, 110, 95, 115, 101, 116, 95, 97, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 108, 116, 95, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 95, 109, 105, 103, 114, 97, 116, 101, 100, 95, 116, 104, 114, 101, 97, 100, 95, 115, 105, 110, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 119, 97, 114, 101, 110, 101, 115, 115, 95, 108, 105, 118, 101, 83, 116, 97, 116, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 106, 111, 105, 110, 95, 117, 114, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 97, 99, 116, 105, 111, 110, 95, 116, 104, 114, 101, 97, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 101, 110, 116, 95, 116, 104, 114, 101, 97, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 115, 117, 109, 112, 116, 105, 111, 110, 95, 104, 111, 114, 105, 122, 111, 110, 95, 114, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 115, 117, 109, 112, 116, 105, 111, 110, 95, 104, 111, 114, 105, 122, 111, 110, 95, 99, 114, 99, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 115, 117, 109, 112, 116, 105, 111, 110, 95, 104, 111, 114, 105, 122, 111, 110, 95, 98, 111, 111, 107, 109, 97, 114, 107, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 108, 105, 101, 110, 116, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 115, 121, 110, 99, 101, 100, 95, 109, 101, 115, 115, 97, 103, 101, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 115, 121, 110, 99, 101, 100, 95, 109, 101, 115, 115, 97, 103, 101, 95, 118, 101, 114, 115, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 115, 121, 110, 99, 101, 100, 95, 100, 97, 121, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 101, 114, 115, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 110, 100, 112, 111, 105, 110, 116, 95, 100, 101, 116, 97, 105, 108, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 112, 114, 111, 102, 105, 108, 101, 95, 104, 101, 105, 103, 104, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 99, 104, 97, 116, 95, 119, 105, 100, 116, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 99, 104, 97, 116, 95, 108, 101, 102, 116, 95, 109, 97, 114, 103, 105, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 99, 104, 97, 116, 95, 114, 105, 103, 104, 116, 95, 109, 97, 114, 103, 105, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 101, 110, 116, 114, 121, 95, 104, 101, 105, 103, 104, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 119, 105, 110, 100, 111, 119, 112, 111, 115, 95, 120, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 119, 105, 110, 100, 111, 119, 112, 111, 115, 95, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 119, 105, 110, 100, 111, 119, 112, 111, 115, 95, 119, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 119, 105, 110, 100, 111, 119, 112, 111, 115, 95, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 119, 105, 110, 100, 111, 119, 95, 109, 97, 120, 105, 109, 105, 122, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 119, 105, 110, 100, 111, 119, 95, 100, 101, 116, 97, 99, 104, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 112, 105, 110, 110, 101, 100, 95, 111, 114, 100, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 110, 101, 119, 95, 105, 110, 95, 105, 110, 98, 111, 120, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 116, 97, 98, 95, 111, 114, 100, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 118, 105, 100, 101, 111, 95, 108, 97, 121, 111, 117, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 118, 105, 100, 101, 111, 95, 99, 104, 97, 116, 95, 104, 101, 105, 103, 104, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 99, 104, 97, 116, 95, 97, 118, 97, 116, 97, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 99, 111, 110, 115, 117, 109, 112, 116, 105, 111, 110, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 102, 111, 114, 109, 95, 118, 105, 115, 105, 98, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 114, 101, 99, 111, 118, 101, 114, 121, 95, 109, 111, 100, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 116, 114, 97, 110, 115, 108, 97, 116, 111, 114, 95, 101, 110, 97, 98, 108, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 116, 114, 97, 110, 115, 108, 97, 116, 111, 114, 95, 99, 97, 108, 108, 95, 109, 121, 95, 108, 97, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 116, 114, 97, 110, 115, 108, 97, 116, 111, 114, 95, 99, 97, 108, 108, 95, 111, 116, 104, 101, 114, 95, 108, 97, 110, 103, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 116, 114, 97, 110, 115, 108, 97, 116, 111, 114, 95, 99, 104, 97, 116, 95, 109, 121, 95, 108, 97, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 116, 114, 97, 110, 115, 108, 97, 116, 111, 114, 95, 99, 104, 97, 116, 95, 111, 116, 104, 101, 114, 95, 108, 97, 110, 103, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 95, 102, 105, 114, 115, 116, 95, 117, 110, 114, 101, 97, 100, 95, 101, 109, 111, 116, 101, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 97, 116, 97, 99, 104, 97, 110, 110, 101, 108, 95, 111, 98, 106, 101, 99, 116, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 118, 105, 116, 101, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 105, 103, 104, 108, 105, 103, 104, 116, 115, 95, 102, 111, 108, 108, 111, 119, 95, 112, 101, 110, 100, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 105, 103, 104, 108, 105, 103, 104, 116, 115, 95, 102, 111, 108, 108, 111, 119, 95, 119, 97, 105, 116, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 105, 103, 104, 108, 105, 103, 104, 116, 115, 95, 97, 100, 100, 95, 112, 101, 110, 100, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 105, 103, 104, 108, 105, 103, 104, 116, 115, 95, 97, 100, 100, 95, 119, 97, 105, 116, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 68, 97, 116, 97, 67, 104, 97, 110, 110, 101, 108, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 68, 98, 77, 101, 116, 97, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 117, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 76, 101, 103, 97, 99, 121, 77, 101, 115, 115, 97, 103, 101, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 76, 105, 103, 104, 116, 87, 101, 105, 103, 104, 116, 77, 101, 101, 116, 105, 110, 103, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 108, 108, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 99, 111, 100, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 115, 117, 98, 99, 111, 100, 101, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 77, 101, 100, 105, 97, 68, 111, 99, 117, 109, 101, 110, 116, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 111, 114, 97, 103, 101, 95, 100, 111, 99, 117, 109, 101, 110, 116, 95, 105, 100, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 111, 99, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 114, 105, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 114, 105, 103, 105, 110, 97, 108, 95, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 116, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 104, 117, 109, 98, 110, 97, 105, 108, 95, 117, 114, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 119, 101, 98, 95, 117, 114, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 105, 109, 101, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 114, 118, 105, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 115, 117, 109, 112, 116, 105, 111, 110, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 118, 111, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 110, 100, 105, 110, 103, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 109, 115, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 77, 101, 115, 115, 97, 103, 101, 65, 110, 110, 111, 116, 97, 116, 105, 111, 110, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 101, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 117, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 77, 101, 115, 115, 97, 103, 101, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 114, 111, 109, 95, 117, 115, 101, 114, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 114, 111, 109, 95, 100, 105, 115, 112, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 109, 115, 103, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 101, 110, 116, 105, 116, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 97, 118, 101, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 111, 100, 121, 95, 120, 109, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 109, 115, 103, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 111, 100, 121, 95, 105, 115, 95, 114, 97, 119, 120, 109, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 100, 105, 116, 101, 100, 95, 98, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 100, 105, 116, 101, 100, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 101, 119, 111, 112, 116, 105, 111, 110, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 101, 119, 114, 111, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 97, 108, 111, 103, 95, 112, 97, 114, 116, 110, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 108, 100, 111, 112, 116, 105, 111, 110, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 117, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 118, 111, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 110, 100, 105, 110, 103, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 97, 109, 95, 107, 101, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 97, 109, 95, 118, 97, 108, 117, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 114, 114, 111, 114, 95, 99, 111, 100, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 115, 117, 109, 112, 116, 105, 111, 110, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 111, 114, 95, 119, 97, 115, 95, 108, 105, 118, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 105, 99, 105, 112, 97, 110, 116, 95, 99, 111, 117, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 107, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 114, 99, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 109, 111, 116, 101, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 101, 110, 116, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 97, 108, 108, 95, 103, 117, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 99, 111, 110, 116, 97, 99, 116, 95, 114, 101, 118, 105, 101, 119, 95, 100, 97, 116, 101, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 99, 111, 110, 116, 97, 99, 116, 95, 114, 101, 99, 101, 105, 118, 101, 100, 95, 115, 116, 97, 109, 112, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 99, 111, 110, 116, 97, 99, 116, 95, 114, 101, 118, 105, 101, 119, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 112, 116, 105, 111, 110, 95, 98, 105, 116, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 114, 118, 101, 114, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 110, 110, 111, 116, 97, 116, 105, 111, 110, 95, 118, 101, 114, 115, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 95, 95, 109, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 110, 103, 117, 97, 103, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 111, 116, 115, 95, 115, 101, 116, 116, 105, 110, 103, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 97, 99, 116, 105, 111, 110, 95, 116, 104, 114, 101, 97, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 116, 101, 110, 116, 95, 102, 108, 97, 103, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 85, 78, 73, 81, 85, 69, 40, 112, 107, 95, 105, 100, 44, 32, 99, 111, 110, 118, 111, 95, 105, 100, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 80, 97, 114, 116, 105, 99, 105, 112, 97, 110, 116, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 118, 111, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 97, 110, 107, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 113, 117, 101, 115, 116, 101, 100, 95, 114, 97, 110, 107, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 101, 120, 116, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 111, 105, 99, 101, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 112, 114, 105, 99, 101, 95, 102, 111, 114, 95, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 102, 119, 100, 95, 105, 100, 101, 110, 116, 105, 116, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 115, 116, 97, 114, 116, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 111, 117, 110, 100, 95, 108, 101, 118, 101, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 98, 117, 103, 105, 110, 102, 111, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 101, 120, 116, 95, 114, 101, 100, 105, 97, 108, 95, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 114, 111, 102, 95, 114, 101, 100, 105, 97, 108, 115, 95, 108, 101, 102, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 118, 111, 105, 99, 101, 95, 101, 114, 114, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 113, 117, 97, 108, 105, 116, 121, 95, 112, 114, 111, 98, 108, 101, 109, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 99, 111, 117, 110, 116, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 114, 97, 110, 115, 102, 101, 114, 114, 101, 100, 95, 98, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 114, 97, 110, 115, 102, 101, 114, 114, 101, 100, 95, 116, 111, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 100, 100, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 112, 111, 110, 115, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 108, 101, 97, 118, 101, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 114, 101, 109, 105, 117, 109, 95, 118, 105, 100, 101, 111, 95, 115, 112, 111, 110, 115, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 109, 117, 108, 116, 105, 112, 97, 114, 116, 121, 95, 118, 105, 100, 101, 111, 95, 99, 97, 112, 97, 98, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 105, 100, 101, 110, 116, 105, 116, 121, 95, 116, 111, 95, 117, 115, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 115, 101, 115, 115, 105, 111, 110, 95, 114, 101, 99, 111, 118, 101, 114, 121, 95, 105, 110, 95, 112, 114, 111, 103, 114, 101, 115, 115, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 115, 101, 115, 115, 105, 111, 110, 95, 102, 97, 108, 108, 98, 97, 99, 107, 95, 105, 110, 95, 112, 114, 111, 103, 114, 101, 115, 115, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 109, 117, 108, 116, 105, 112, 97, 114, 116, 121, 95, 118, 105, 100, 101, 111, 95, 117, 112, 100, 97, 116, 97, 98, 108, 101, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 105, 112, 95, 97, 100, 100, 114, 101, 115, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 118, 105, 100, 101, 111, 95, 99, 111, 100, 101, 99, 95, 99, 111, 109, 112, 97, 116, 105, 98, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 103, 114, 111, 117, 112, 95, 99, 97, 108, 108, 105, 110, 103, 95, 99, 97, 112, 97, 98, 105, 108, 105, 116, 105, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 115, 101, 97, 109, 108, 101, 115, 115, 108, 121, 95, 117, 112, 103, 114, 97, 100, 101, 100, 95, 99, 97, 108, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 118, 101, 95, 118, 111, 105, 99, 101, 99, 104, 97, 110, 110, 101, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 97, 100, 95, 104, 111, 114, 105, 122, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 97, 99, 116, 105, 118, 101, 95, 115, 112, 101, 97, 107, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 111, 109, 105, 110, 97, 110, 116, 95, 115, 112, 101, 97, 107, 101, 114, 95, 114, 97, 110, 107, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 110, 100, 112, 111, 105, 110, 116, 95, 100, 101, 116, 97, 105, 108, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 115, 115, 97, 103, 105, 110, 103, 95, 109, 111, 100, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 97, 108, 95, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 100, 100, 105, 110, 103, 95, 105, 110, 95, 112, 114, 111, 103, 114, 101, 115, 115, 95, 115, 105, 110, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 85, 78, 73, 81, 85, 69, 40, 99, 111, 110, 118, 111, 95, 105, 100, 44, 32, 105, 100, 101, 110, 116, 105, 116, 121, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 83, 101, 114, 118, 101, 114, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 32, 85, 78, 73, 81, 85, 69, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 111, 108, 100, 101, 114, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 99, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 97, 110, 110, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 118, 105, 116, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 109, 98, 101, 114, 95, 99, 111, 117, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 111, 115, 105, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 83, 77, 83, 101, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 102, 97, 105, 108, 101, 100, 95, 117, 110, 115, 101, 101, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 105, 99, 101, 95, 112, 114, 101, 99, 105, 115, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 105, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 105, 99, 101, 95, 99, 117, 114, 114, 101, 110, 99, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 97, 114, 103, 101, 116, 95, 110, 117, 109, 98, 101, 114, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 97, 114, 103, 101, 116, 95, 115, 116, 97, 116, 117, 115, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 111, 100, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 112, 108, 121, 95, 116, 111, 95, 110, 117, 109, 98, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 109, 115, 103, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 104, 105, 100, 101, 95, 102, 114, 111, 109, 95, 104, 105, 115, 116, 111, 114, 121, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 101, 120, 116, 101, 110, 100, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 101, 110, 116, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 118, 101, 110, 116, 95, 102, 108, 97, 103, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 112, 108, 121, 95, 105, 100, 95, 110, 117, 109, 98, 101, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 118, 111, 95, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 117, 116, 103, 111, 105, 110, 103, 95, 114, 101, 112, 108, 121, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 114, 114, 111, 114, 95, 99, 97, 116, 101, 103, 111, 114, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 84, 114, 97, 110, 115, 102, 101, 114, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 104, 97, 110, 100, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 100, 105, 115, 112, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 114, 116, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 105, 110, 105, 115, 104, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 105, 108, 101, 112, 97, 116, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 105, 108, 101, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 105, 108, 101, 115, 105, 122, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 121, 116, 101, 115, 116, 114, 97, 110, 115, 102, 101, 114, 114, 101, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 121, 116, 101, 115, 112, 101, 114, 115, 101, 99, 111, 110, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 109, 115, 103, 95, 103, 117, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 109, 115, 103, 95, 105, 110, 100, 101, 120, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 118, 111, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 107, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 117, 108, 108, 115, 105, 122, 101, 95, 117, 114, 108, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 111, 100, 101, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 115, 116, 95, 97, 99, 116, 105, 118, 105, 116, 121, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 108, 97, 103, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 108, 100, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 108, 100, 95, 102, 105, 108, 101, 112, 97, 116, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 108, 111, 99, 97, 108, 102, 105, 108, 101, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 104, 105, 100, 101, 95, 102, 114, 111, 109, 95, 104, 105, 115, 116, 111, 114, 121, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 119, 105, 110, 100, 111, 119, 95, 118, 105, 115, 105, 98, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 104, 97, 110, 100, 108, 101, 100, 95, 98, 121, 95, 99, 104, 97, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 99, 99, 101, 112, 116, 116, 105, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 101, 110, 116, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 102, 102, 101, 114, 95, 115, 101, 110, 100, 95, 108, 105, 115, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 84, 114, 97, 110, 115, 108, 97, 116, 111, 114, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 86, 105, 100, 101, 111, 77, 101, 115, 115, 97, 103, 101, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 113, 105, 107, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 116, 116, 97, 99, 104, 101, 100, 95, 109, 115, 103, 95, 105, 100, 115, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 104, 97, 114, 105, 110, 103, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 111, 100, 95, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 111, 100, 95, 112, 97, 116, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 111, 99, 97, 108, 95, 112, 97, 116, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 117, 98, 108, 105, 99, 95, 108, 105, 110, 107, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 103, 114, 101, 115, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 116, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 117, 116, 104, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 114, 101, 97, 116, 105, 111, 110, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 86, 105, 100, 101, 111, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 109, 101, 110, 115, 105, 111, 110, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 114, 114, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 98, 117, 103, 105, 110, 102, 111, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 117, 114, 97, 116, 105, 111, 110, 95, 49, 48, 56, 48, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 117, 114, 97, 116, 105, 111, 110, 95, 55, 50, 48, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 117, 114, 97, 116, 105, 111, 110, 95, 104, 113, 118, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 117, 114, 97, 116, 105, 111, 110, 95, 118, 103, 97, 100, 50, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 117, 114, 97, 116, 105, 111, 110, 95, 108, 116, 118, 103, 97, 100, 50, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 113, 95, 112, 114, 101, 115, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 117, 114, 97, 116, 105, 111, 110, 95, 115, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 115, 95, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 100, 105, 97, 95, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 118, 111, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 118, 105, 99, 101, 95, 112, 97, 116, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 118, 105, 99, 101, 95, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 105, 99, 105, 112, 97, 110, 116, 95, 105, 100, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 97, 110, 107, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67, 82, 69, 65, 84, 69, 32, 84, 65, 66, 76, 69, 32, 73, 70, 32, 78, 79, 84, 32, 69, 88, 73, 83, 84, 83, 32, 86, 111, 105, 99, 101, 109, 97, 105, 108, 115, 32, 40, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 32, 78, 79, 84, 32, 78, 85, 76, 76, 32, 80, 82, 73, 77, 65, 82, 89, 32, 75, 69, 89, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 115, 95, 112, 101, 114, 109, 97, 110, 101, 110, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 121, 112, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 104, 97, 110, 100, 108, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 114, 116, 110, 101, 114, 95, 100, 105, 115, 112, 110, 97, 109, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 116, 97, 116, 117, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 114, 101, 97, 115, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 117, 98, 106, 101, 99, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 115, 116, 97, 109, 112, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 117, 114, 97, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 97, 108, 108, 111, 119, 101, 100, 95, 100, 117, 114, 97, 116, 105, 111, 110, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 108, 97, 121, 98, 97, 99, 107, 95, 112, 114, 111, 103, 114, 101, 115, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 118, 111, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 104, 97, 116, 109, 115, 103, 95, 103, 117, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 76, 79, 66, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 95, 105, 100, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 108, 97, 103, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 105, 122, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 97, 116, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 105, 108, 117, 114, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 102, 108, 97, 103, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 120, 109, 115, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 69, 88, 84, 44, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 101, 120, 116, 112, 114, 111, 112, 95, 104, 105, 100, 101, 95, 102, 114, 111, 109, 95, 104, 105, 115, 116, 111, 114, 121, 32, 32, 32, 73, 78, 84, 69, 71, 69, 82, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 59

.LSTUB_m_Skymu_Databases_DatabaseManager_ConversationsTable_BuildGroup_ref_ref_i4_v_gen_gen:
    .asciz "Skymu.Databases.DatabaseManager/ConversationsTable::BuildGroup  [constructor with 6 arguments (limit 5)]"

.LSTUB_m_Skymu_Databases_DatabaseManager_ServersTable_Read_void:
    .asciz "Skymu.Databases.DatabaseManager/ServersTable::Read  [constructor with 11 arguments (limit 5)]"

.LSTUB_m_Skymu_Databases_DatabaseManager_MessagesTable_Read_ref_i4_gen:
    .asciz "Skymu.Databases.DatabaseManager/MessagesTable::Read  [constructor with 6 arguments (limit 5)]"

.LSTUB_m_Skymu_Databases_DatabaseManager_MessagesTable_ReadRow_ref_i8_gen_ref:
    .asciz "Skymu.Databases.DatabaseManager/MessagesTable::ReadRow  [constructor with 6 arguments (limit 5)]"

.LSTUB_m_Skymu_Databases_DatabaseManager_EnsureDatabaseVersion_ref_ref:
    .asciz "Skymu.Databases.DatabaseManager::EnsureDatabaseVersion  [constructor with 17 arguments (limit 5)]"

.LSTUB_m_Skymu_Databases_DatabaseManager_UserFromReader_ref_ref:
    .asciz "Skymu.Databases.DatabaseManager::UserFromReader  [inconsistent stack depth at IL_007e: 2 vs 3]"

.LSTUB_m_Skymu_Databases_DatabaseManager_StubUser_ref:
    .asciz "Skymu.Databases.DatabaseManager::StubUser  [constructor with 6 arguments (limit 5)]"

    .section .note.GNU-stack,"",@progbits
