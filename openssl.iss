#define MyAppName "OpenSSL"
;#define MyAppVersion "3.3.1"
;#define MyAppVersion "3.2.2"
#define MyAppVersion "3.1.6"
#define MyAppPublisher "OpenSSL"
#define MyAppURL "https://www.openssl.org/"
#define MyAppExeName "bin\openssl.exe"
;#define MyAPPArchitecture "win32"
#define MyAPPArchitecture "win64"


[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5C2A46F8-42FD-412D-AA22-723DCA16F4E8}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
; "ArchitecturesAllowed=x64compatible" specifies that Setup cannot run
; on anything but x64 and Windows 11 on Arm.
ArchitecturesAllowed=x64compatible
; "ArchitecturesInstallIn64BitMode=x64compatible" requests that the
; install be done in "64-bit mode" on x64 or Windows 11 on Arm,
; meaning it should use the native 64-bit Program Files directory and
; the 64-bit view of the registry.
ArchitecturesInstallIn64BitMode=x64compatible
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=LICENSE-inst.rtf
OutputDir=C:\OpenSSL
OutputBaseFilename=openssl-{#MyAppVersion}-{#MyAPPArchitecture}
SetupIconFile=openssl.ico
SolidCompression=yes
WizardImageFile=openssl.bmp
WizardSmallImageFile=os.bmp
WizardStyle=modern
Compression=lzma2/ultra64
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
ChangesEnvironment=true
#define public Dependency_NoExampleSetup
#include "CodeDependencies.iss"
#include "environment.iss"

[Languages]
Name: "English";    MessagesFile: "compiler:Default.isl"
Name: "Armenian";   MessagesFile: "compiler:Languages\Armenian.isl"
Name: "Brazilian";  MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "Bulgarian";  MessagesFile: "compiler:Languages\Bulgarian.isl"
Name: "Catalan";    MessagesFile: "compiler:Languages\Catalan.isl"
Name: "Corsican";   MessagesFile: "compiler:Languages\Corsican.isl"
Name: "Czech";      MessagesFile: "compiler:Languages\Czech.isl"
Name: "Danish";     MessagesFile: "compiler:Languages\Danish.isl"
Name: "Dutch";      MessagesFile: "compiler:Languages\Dutch.isl"
Name: "Finnish";    MessagesFile: "compiler:Languages\Finnish.isl"
Name: "French";     MessagesFile: "compiler:Languages\French.isl"
Name: "German";     MessagesFile: "compiler:Languages\German.isl"
Name: "Hebrew";     MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "Icelandic";  MessagesFile: "compiler:Languages\Icelandic.isl"
Name: "Italian";    MessagesFile: "compiler:Languages\Italian.isl"
Name: "Japanese";   MessagesFile: "compiler:Languages\Japanese.isl"
Name: "Norwegian";  MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "Polish";     MessagesFile: "compiler:Languages\Polish.isl"
Name: "Portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "Russian";    MessagesFile: "compiler:Languages\Russian.isl"
Name: "Slovak";     MessagesFile: "compiler:Languages\Slovak.isl"
Name: "Slovenian";  MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "Spanish";    MessagesFile: "compiler:Languages\Spanish.isl"
Name: "Turkish";    MessagesFile: "compiler:Languages\Turkish.isl"
Name: "Ukrainian";  MessagesFile: "compiler:Languages\Ukrainian.isl"

[CustomMessages]
English.BaseBinaries=Basic binaries
English.UsrManual=HTML user manual
English.IncLib=Includes and libraries
English.AddToVar=Add to system %1 variable
Russian.BaseBinaries=����������� �����
Russian.UsrManual=����������� ������������ HTML
Russian.IncLib=�������� � ����������
Russian.AddToVar=�������� � ��������� ���������� %1

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: envPath; Description: "{cm:AddToVar,PATH}"
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\openssl-build\openssl-{#MyAppVersion}-{#MyAPPArchitecture}\bin\*"; DestDir: "{app}\bin"; Flags: recursesubdirs createallsubdirs; Components: Binaries
Source: "C:\openssl-build\openssl-{#MyAppVersion}-{#MyAPPArchitecture}\html\*"; DestDir: "{app}\html"; Flags: recursesubdirs createallsubdirs; Components: Documents
Source: "C:\openssl-build\openssl-{#MyAppVersion}-{#MyAPPArchitecture}\include\*"; DestDir: "{app}\include"; Flags: recursesubdirs createallsubdirs; Components: Inclib
Source: "C:\openssl-build\openssl-{#MyAppVersion}-{#MyAPPArchitecture}\lib\*"; DestDir: "{app}\lib"; Flags: recursesubdirs createallsubdirs; Components: Inclib
Source: "openssl.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{cmd}"; WorkingDir: "{app}"; IconFilename: "{app}\openssl.ico"; IconIndex: 0; Parameters: "/K ""{app}\{#MyAppExeName}"" version"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"; IconFilename: "{app}\openssl.ico"; IconIndex: 0
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"; IconFilename: "{app}\openssl.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{cmd}"; IconFilename: "{app}\openssl.ico"; IconIndex: 0; Parameters: "/K ""{app}\{#MyAppExeName}"" version"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{cmd}"; IconFilename: "{app}\openssl.ico"; IconIndex: 0; Parameters: "/K ""{app}\{#MyAppExeName}"" version"; Tasks: quicklaunchicon
Name: "{group}\{#MyAppName} offline manual"; Filename: "{app}\html\man1\openssl.html"; IconFilename: "{app}\openssl.ico"; IconIndex: 0; Components: Documents

[Run]
Filename: "{cmd}"; Parameters: "/K ""{app}\{#MyAppExeName}"" version"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Components]
Name: "Binaries"; Description: "{cm:BaseBinaries}"; Types: compact custom full; Flags: checkablealone fixed;
Name: "Documents"; Description: "{cm:UsrManual,HTML}"; Types: custom full
Name: "Inclib"; Description: "{cm:IncLib}"; Types: full custom

[Code]
function InitializeSetup: Boolean;
begin
  // add the dependencies you need
  Dependency_AddVC2015To2022;
  // ...

  Result := True;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
    if CurStep = ssPostInstall 
     then EnvAddPath(ExpandConstant('{app}') +'\bin');
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
    if CurUninstallStep = usPostUninstall
    then EnvRemovePath(ExpandConstant('{app}') +'\bin');
end;
