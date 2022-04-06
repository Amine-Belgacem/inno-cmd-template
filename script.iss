
[Setup]
AppName=Myprog
AppVersion=v0.0
WizardStyle=modern
DefaultDirName={autopf}\myprog
DefaultGroupName=\myprog
UninstallDisplayIcon={app}\myprog.exe
Compression=lzma2
SolidCompression=yes
InfoBeforeFile=license.txt
OutputDir=.
OutputBaseFilename=myprog-v0.0-installer
ChangesEnvironment=yes

[Files]
Source: "myprog.exe"; DestDir: "{app}"
Source: "usage.txt"; DestDir: "{app}"; Flags: isreadme

[Icons]
Name: "{group}\secnet"; Filename: "{app}myprog.exe"

[Registry]
Root: HKLM; SubKey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment\"; ValueType: string; ValueName: "Path"; ValueData: "{reg:HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\,Path};{app}"

[Code]
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var
  Path, AppDir: string;
  Index: Integer;
begin
  if CurUninstallStep = usUninstall then
  begin
    if RegQueryStringValue(HKEY_LOCAL_MACHINE,
      'SYSTEM\CurrentControlSet\Control\Session Manager\Environment\',
      'Path', Path) then
    begin
      AppDir := ExpandConstant('{app}');
      Index := Pos(AppDir, Path);
      Delete(Path, Index-1, Length(AppDir)+1);
      RegWriteStringValue(HKEY_LOCAL_MACHINE,
        'SYSTEM\CurrentControlSet\Control\Session Manager\Environment\',
        'Path', Path);
    end;
  end;
end;
