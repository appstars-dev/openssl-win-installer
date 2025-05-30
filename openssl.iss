#define MyAppName "OpenSSL"
;#define MyAppVersion "3.5.0"
;#define MyAppVersion "3.4.1"
#define MyAppVersion "3.3.3"
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

Brazilian.BaseBinaries=Bin?rios b?sicos
Brazilian.UsrManual=Manual do usu?rio HTML
Brazilian.IncLib=Inclui e bibliotecas
Brazilian.AddToVar=Adicionar ? vari?vel %1 do sistema

Catalan.BaseBinaries=Binaris b?sics
Catalan.UsrManual=Manual d'usuari HTML
Catalan.IncLib=Inclou i biblioteques
Catalan.AddToVar=Afegeix a la variable del sistema %1

Corsican.BaseBinaries=Basic binaries
Corsican.UsrManual=HTML user manual
Corsican.IncLib=Includes and libraries
Corsican.AddToVar=Add to system %1 variable

Czech.BaseBinaries=Basic binaries
Czech.UsrManual=HTML user manual
Czech.IncLib=Includes and libraries
Czech.AddToVar=Add to system %1 variable

Danish.BaseBinaries=Basic binaries
Danish.UsrManual=HTML user manual
Danish.IncLib=Includes and libraries
Danish.AddToVar=Add to system %1 variable

Dutch.BaseBinaries=Basic binaries
Dutch.UsrManual=HTML user manual
Dutch.IncLib=Includes and libraries
Dutch.AddToVar=Add to system %1 variable

Finnish.BaseBinaries=Basic binaries
Finnish.UsrManual=HTML user manual
Finnish.IncLib=Includes and libraries
Finnish.AddToVar=Add to system %1 variable

French.BaseBinaries=Basic binaries
French.UsrManual=HTML user manual
French.IncLib=Includes and libraries
French.AddToVar=Add to system %1 variable

German.BaseBinaries=Basic binaries
German.UsrManual=HTML user manual
German.IncLib=Includes and libraries
German.AddToVar=Add to system %1 variable

Hebrew.BaseBinaries=Basic binaries
Hebrew.UsrManual=HTML user manual
Hebrew.IncLib=Includes and libraries
Hebrew.AddToVar=Add to system %1 variable

Icelandic.BaseBinaries=Basic binaries
Icelandic.UsrManual=HTML user manual
Icelandic.IncLib=Includes and libraries
Icelandic.AddToVar=Add to system %1 variable

Italian.BaseBinaries=Basic binaries
Italian.UsrManual=HTML user manual
Italian.IncLib=Includes and libraries
Italian.AddToVar=Add to system %1 variable

Japanese.BaseBinaries=Basic binaries
Japanese.UsrManual=HTML user manual
Japanese.IncLib=Includes and libraries
Japanese.AddToVar=Add to system %1 variable

Norwegian.BaseBinaries=Basic binaries
Norwegian.UsrManual=HTML user manual
Norwegian.IncLib=Includes and libraries
Norwegian.AddToVar=Add to system %1 variable

Polish.BaseBinaries=Basic binaries
Polish.UsrManual=HTML user manual
Polish.IncLib=Includes and libraries
Polish.AddToVar=Add to system %1 variable

Portuguese.BaseBinaries=Bin?rios b?sicos
Portuguese.UsrManual=Manual do utilizador HTML
Portuguese.IncLib=Inclui e bibliotecas
Portuguese.AddToVar=Adicionar ? vari?vel % 1 do sistema

Russian.BaseBinaries=Исполняемые файлы
Russian.UsrManual=Руководство пользователя HTML
Russian.IncLib=Вложения и библиотеки
Russian.AddToVar=Добавить в системную переменную %1

Slovak.BaseBinaries=Basic binaries
Slovak.UsrManual=HTML user manual
Slovak.IncLib=Includes and libraries
Slovak.AddToVar=Add to system %1 variable

Slovenian.BaseBinaries=Basic binaries
Slovenian.UsrManual=HTML user manual
Slovenian.IncLib=Includes and libraries
Slovenian.AddToVar=Add to system %1 variable

Spanish.BaseBinaries=Basic binaries
Spanish.UsrManual=HTML user manual
Spanish.IncLib=Includes and libraries
Spanish.AddToVar=Add to system %1 variable

Turkish.BaseBinaries=Basic binaries
Turkish.UsrManual=HTML user manual
Turkish.IncLib=Includes and libraries
Turkish.AddToVar=Add to system %1 variable

Ukrainian.BaseBinaries=Базові двійкові файли
Ukrainian.UsrManual=Посібник користувача HTML
Ukrainian.IncLib=Включає і бібліотеки
Ukrainian.AddToVar=Додати до системної змінної %1

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
