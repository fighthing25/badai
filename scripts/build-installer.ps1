[Setup]
AppName=Badai Notch
AppVersion=1.0.0
DefaultDirName={autopf}\BadaiNotch
DefaultGroupName=Badai Notch
OutputBaseFilename=Badai-Setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
UninstallDisplayIcon={app}\BadaiNotch.exe

[Files]
Source: "..\publish\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Badai Notch"; Filename: "{app}\BadaiNotch.exe"
Name: "{userdesktop}\Badai Notch"; Filename: "{app}\BadaiNotch.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a desktop icon"; GroupDescription: "Additional icons:"

[Run]
Filename: "{app}\BadaiNotch.exe"; Description: "Run Badai Notch"; Flags: nowait postinstall skipifsilent
