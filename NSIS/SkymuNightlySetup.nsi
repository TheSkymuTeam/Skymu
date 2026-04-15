!define SOURCE_DIR_MODERN "..\Skymu\bin\SkymuCore\Release"
!define SOURCE_DIR_LEGACY "..\Skymu\bin\SkymuFramework\Release"
!define PRODUCT_NAME "Skymu Nightly"
!define PRODUCT_PUBLISHER "The Skymu Team"
!define PRODUCT_WEB_SITE "https://skymu.app"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\Skymu.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

RequestExecutionLevel admin
!include "MUI2.nsh"
!include "LogicLib.nsh"
!include "nsDialogs.nsh"

!define MUI_ABORTWARNING
!define MUI_ICON "..\Skymu\Icons\skype.ico"
!define MUI_UNICON "..\Skymu\Icons\skype.ico"
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_BITMAP "header-nightly.bmp"
!define MUI_HEADERIMAGE_BITMAP_STRETCH "AspectFitHeight"
!define MUI_WELCOMEFINISHPAGE_BITMAP "column-nightly.bmp"

Var VersionRadio_Modern
Var VersionRadio_Legacy
Var IsModern
Var IsLegacy
Var ModernDesc
Var LegacyDesc

Function HideHeaderText
    GetDlgItem $0 $HWNDPARENT 1037
    ShowWindow $0 ${SW_HIDE}
    GetDlgItem $0 $HWNDPARENT 1038
    ShowWindow $0 ${SW_HIDE}
FunctionEnd

Function KillSkymuProcesses
    nsExec::ExecToLog 'taskkill /F /IM Skymu.exe'
FunctionEnd

Function VersionSelectPage
    Call HideHeaderText
    nsDialogs::Create 1018
    Pop $0

    ${NSD_CreateLabel} 0 0 100% 20u "Please select the version of Skymu to install."
    Pop $0

    ; --- Modern ---
    ${NSD_CreateRadioButton} 0 25u 100% 12u "Skymu (Nightly)"
    Pop $VersionRadio_Modern
    ${NSD_Check} $VersionRadio_Modern

    ${NSD_CreateLabel} 10u 38u 90% 20u ".NET Core version. Better performance, memory usage, and security."
    Pop $ModernDesc
    SetCtlColors $ModernDesc 0x808080 transparent

    ; --- Legacy ---
    ${NSD_CreateRadioButton} 0 60u 100% 12u "Skymu Legacy (Nightly)"
    Pop $VersionRadio_Legacy

    ${NSD_CreateLabel} 10u 73u 90% 20u "For Windows Vista or 32-bit systems. Uses .NET Framework 4.6.1."
    Pop $LegacyDesc
    SetCtlColors $LegacyDesc 0x808080 transparent
	
	CreateFont $1 "Segoe UI" 8 400 /ITALIC
SendMessage $ModernDesc ${WM_SETFONT} $1 1
SendMessage $LegacyDesc ${WM_SETFONT} $1 1

    nsDialogs::Show
FunctionEnd

Function VersionSelectLeave
    ${NSD_GetState} $VersionRadio_Modern $IsModern
    ${NSD_GetState} $VersionRadio_Legacy $IsLegacy

    ${If} $IsLegacy == ${BST_CHECKED}
        StrCpy $INSTDIR "$PROGRAMFILES\Skymu"   ; x86 path
    ${Else}
        StrCpy $INSTDIR "$PROGRAMFILES64\Skymu" ; x64 path
    ${EndIf}
FunctionEnd

!define MUI_PAGE_CUSTOMFUNCTION_SHOW HideHeaderText
!insertmacro MUI_PAGE_WELCOME
!define MUI_PAGE_CUSTOMFUNCTION_SHOW HideHeaderText
!insertmacro MUI_PAGE_LICENSE "license.txt"
Page custom VersionSelectPage VersionSelectLeave
!define MUI_PAGE_CUSTOMFUNCTION_SHOW HideHeaderText
!insertmacro MUI_PAGE_DIRECTORY
!define MUI_PAGE_CUSTOMFUNCTION_SHOW HideHeaderText
!insertmacro MUI_PAGE_INSTFILES
!define MUI_FINISHPAGE_RUN "$INSTDIR\Skymu.exe"
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_LANGUAGE "English"

Name "${PRODUCT_NAME}"
OutFile ".\SkymuNightlySetup.exe"
InstallDir "$PROGRAMFILES64\Skymu"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "Install"
    Call KillSkymuProcesses
    SetOutPath "$INSTDIR"
    SetOverwrite ifnewer
    ${If} $IsLegacy == ${BST_CHECKED}
    File /r "${SOURCE_DIR_LEGACY}\*"
${Else}
    File /r "${SOURCE_DIR_MODERN}\*"
${EndIf}

    WriteIniStr "$INSTDIR\desktop.ini" ".ShellClassInfo" "IconFile" "$INSTDIR\Skymu.exe"
    WriteIniStr "$INSTDIR\desktop.ini" ".ShellClassInfo" "IconIndex" "-911"
    CreateDirectory "$APPDATA\Skymu"
    WriteIniStr "$APPDATA\Skymu\desktop.ini" ".ShellClassInfo" "IconFile" "$INSTDIR\Skymu.exe"
    WriteIniStr "$APPDATA\Skymu\desktop.ini" ".ShellClassInfo" "IconIndex" "-911"
    SetFileAttributes "$APPDATA\Skymu\desktop.ini" HIDDEN|SYSTEM
    SetFileAttributes "$APPDATA\Skymu" READONLY
    SetFileAttributes "$INSTDIR\desktop.ini" HIDDEN|SYSTEM
    SetFileAttributes "$INSTDIR" READONLY
    CreateDirectory "$SMPROGRAMS\Skymu"
    CreateShortCut "$SMPROGRAMS\Skymu\Skymu.lnk" "$INSTDIR\Skymu.exe"
    CreateShortCut "$DESKTOP\Skymu.lnk" "$INSTDIR\Skymu.exe"
    WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
    CreateShortCut "$SMPROGRAMS\Skymu\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
    CreateShortCut "$SMPROGRAMS\Skymu\Uninstall.lnk" "$INSTDIR\uninst.exe"
    WriteUninstaller "$INSTDIR\uninst.exe"
    WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\Skymu.exe"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\Skymu.exe"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
	SetRegView 64
WriteRegDWORD HKLM "Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_LOCALMACHINE_LOCKDOWN" "Skymu.exe" 0
WriteRegDWORD HKLM "Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BLOCK_LMZ_SCRIPT" "Skymu.exe" 0
WriteRegDWORD HKLM "Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND" "Skymu.exe" 0
SetRegView 32
SectionEnd

Function un.onUninstSuccess
    HideWindow
    MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
    MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
    Abort
FunctionEnd

Section Uninstall
    Delete "$INSTDIR\uninst.exe"
    Delete "$INSTDIR\${PRODUCT_NAME}.url"
    Delete "$SMPROGRAMS\Skymu\Uninstall.lnk"
    Delete "$SMPROGRAMS\Skymu\Website.lnk"
    Delete "$DESKTOP\Skymu.lnk"
    Delete "$SMPROGRAMS\Skymu\Skymu.lnk"
    RMDir "$SMPROGRAMS\Skymu"
    RMDir /r "$INSTDIR"
    DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
    DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
	DeleteRegValue HKLM "Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_LOCALMACHINE_LOCKDOWN" "Skymu.exe"
	DeleteRegValue HKLM "Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BLOCK_LMZ_SCRIPT" "Skymu.exe"
	DeleteRegValue HKLM "Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND" "Skymu.exe"
    SetAutoClose true
SectionEnd
