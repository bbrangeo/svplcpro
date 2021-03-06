; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SVPLC Pro"
#define MyAppVersion "1.0"
#define MyAppPublisher "Kiki's Company"
#define MyAppExeName "SVPLC Pro.exe"
#define DirWkspc "C:\Users\Kiki\Desktop\SVPLC Pro"
#define DirDoc "{userdocs}\SVPLC Pro"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{DBA9B5C7-0009-4DF4-AA25-351AE9BC87CB}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir={#DirWkspc}\Com
OutputBaseFilename=Setup SVPLC Pro
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\Icone svplcpro256.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#DirWkspc}\SVPLC Pro\bin\Release\SVPLC Pro.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#DirWkspc}\Iss\Icone svplcpro256.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#DirWkspc}\SVPLC Pro BDD vierges\BDD Associations.txt"; DestDir: "{#DirDoc}"; Flags: ignoreversion
Source: "{#DirWkspc}\SVPLC Pro BDD vierges\BDD Plantes.txt"; DestDir: "{#DirDoc}"; Flags: ignoreversion
Source: "{#DirWkspc}\SVPLC Pro BDD vierges\BDD Rotations.txt"; DestDir: "{#DirDoc}"; Flags: ignoreversion
Source: "{#DirWkspc}\SVPLC Pro BDD vierges\BDD Entretien.txt"; DestDir: "{#DirDoc}"; Flags: ignoreversion
Source : "{#DirWkspc}\SVPLC Pro BDD vierges\IMAGES\*" ; DestDir : "{#DirDoc}\IMAGES" ; Flags : ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}";IconFilename:"{app}\Icone svplcpro256.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon;IconFilename:"{app}\Icone svplcpro256.ico"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Setup]
ChangesAssociations=yes
 
[Registry]
Root: HKCR; Subkey: ".svplcpro"; ValueType: string; ValueName: ""; ValueData: "Svplc Pro"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "Svplc Pro"; ValueType: string; ValueName: ""; ValueData: "Svplc Pro"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Svplc Pro\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Icone svplcpro256.ico" 
Root: HKCR; Subkey: "Svplc Pro\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\SVPLC PRO.EXE"" ""%1"""

