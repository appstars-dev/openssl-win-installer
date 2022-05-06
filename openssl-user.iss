#define MyAppName "OpenSSL"
#define MyAppVersion "3.0.3"
;#define MyAppVersion "1.1.1o"
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
DefaultDirName={userpf}\{#MyAppName}
DefaultGroupName={#MyAppName}
PrivilegesRequired=lowest
AllowNoIcons=yes
LicenseFile=LICENSE-inst.txt
OutputDir=C:\OpenSSL
OutputBaseFilename=openssl-user-{#MyAppVersion}-{#MyAPPArchitecture}
SetupIconFile=openssl.ico
SolidCompression=yes
WizardImageFile=openssl.bmp
WizardSmallImageFile=os.bmp
WizardStyle=modern
Compression=lzma2/ultra64
ChangesEnvironment=true

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1
                            
[Files]
Source: "..\openssl-{#MyAppVersion}-{#MyAPPArchitecture}\bin\*"; DestDir: "{app}\bin"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Binaries
Source: "..\openssl-{#MyAppVersion}-{#MyAPPArchitecture}\html\*"; DestDir: "{app}\html"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Documents
Source: "..\openssl-{#MyAppVersion}-{#MyAPPArchitecture}\include\*"; DestDir: "{app}\include"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Inclib
Source: "..\openssl-{#MyAppVersion}-{#MyAPPArchitecture}\lib\*"; DestDir: "{app}\lib"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Inclib
Source: "openssl.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{cmd}"; WorkingDir: "{app}"; IconFilename: "{app}\openssl.ico"; IconIndex: 0; Parameters: "/K ""{app}\{#MyAppExeName}"" version"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"; IconFilename: "{app}\openssl.ico"; IconIndex: 0
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"; IconFilename: "{app}\openssl.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{cmd}"; IconFilename: "{app}\openssl.ico"; IconIndex: 0; Parameters: "/K ""{app}\{#MyAppExeName}"" version"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{cmd}"; IconFilename: "{app}\openssl.ico"; IconIndex: 0; Parameters: "/K ""{app}\{#MyAppExeName}"" version"; Tasks: quicklaunchicon
Name: "{group}\{#MyAppName} offline manual"; Filename: "{app}\html\man1\openssl.html"; IconFilename: "{app}\openssl.ico"; IconIndex: 0; Components: Documents

[Components]
Name: "Binaries"; Description: "Base binaries of the tool"; Types: compact custom full; Flags: checkablealone fixed; Languages: english
Name: "Documents"; Description: "HTML manual"; Types: custom full
Name: "Inclib"; Description: "Includes and libraries"; Types: full custom

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
