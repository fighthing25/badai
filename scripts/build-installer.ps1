; Inno Setup Script for Badai Notch
; Compile with Inno Setup 6.x

[Setup]
AppName=Badai Notch
AppVersion=1.0.0
DefaultDirName={autopf}\BadaiNotch
DefaultGroupName=Badai Notch
OutputBaseFilename=Badai-Setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
UninstallDisplayIcon={app}\BadaiNotch.exe
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64

[Languages]
Name: "indonesian"; MessagesFile: "compiler:Languages\Indonesian.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\publish\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Badai Notch"; Filename: "{app}\BadaiNotch.exe"
Name: "{userdesktop}\Badai Notch"; Filename: "{app}\BadaiNotch.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a desktop icon"; GroupDescription: "Additional icons:";

[Run]
Filename: "{app}\BadaiNotch.exe"; Description: "Run Badai Notch"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "{uninstallexe}"; Parameters: "/SILENT"; Flags: waituntilterminated
