;汉化:MonKeyDu 
;由 Inno Setup 脚本向导 生成的脚本,有关创建 INNO SETUP 脚本文件的详细信息，请参阅文档！!

#define MyAppName "BettrSeewo"
#define MyAppVersion "1.2"
#define MyAppPublisher "wzmwayne bilibili 玩坏电脑"
#define MyAppURL "https://wzmwayne.github.io/betterseewo/"
#define MyAppExeName "BetterSeewo.exe"

[Setup]
;注意:AppId 的值唯一标识此应用程序。请勿在安装程序中对其他应用程序使用相同的 AppId 值。
;（若要生成新的 GUID，请单击“工具”|”在 IDE 中生成 GUID）。
AppId={{7A9040BB-BD0D-4E41-BD55-998CFFD210DF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
DisableProgramGroupPage=yes
;取消下行前面 ; 符号，在非管理安装模式下运行（仅为当前用户安装）.
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename=BetterSeewo_install

SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "chs"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "d:\Users\wayne\Documents\yyy\更好的希沃白板\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "d:\Users\wayne\Documents\yyy\更好的希沃白板\BetterSeewo.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "d:\Users\wayne\Documents\yyy\更好的希沃白板\dppt.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "d:\Users\wayne\Documents\yyy\更好的希沃白板\eAPI.fne"; DestDir: "{app}"; Flags: ignoreversion
Source: "d:\Users\wayne\Documents\yyy\更好的希沃白板\HtmlView.fne"; DestDir: "{app}"; Flags: ignoreversion
Source: "d:\Users\wayne\Documents\yyy\更好的希沃白板\internet.fne"; DestDir: "{app}"; Flags: ignoreversion
Source: "d:\Users\wayne\Documents\yyy\更好的希沃白板\krnln.fnr"; DestDir: "{app}"; Flags: ignoreversion
Source: "d:\Users\wayne\Documents\yyy\更好的希沃白板\sh.e"; DestDir: "{app}"; Flags: ignoreversion
Source: "d:\Users\wayne\Documents\yyy\更好的希沃白板\spec.fne"; DestDir: "{app}"; Flags: ignoreversion
Source: "d:\Users\wayne\Documents\yyy\更好的希沃白板\xiwozhantai.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "d:\Users\wayne\Documents\yyy\更好的希沃白板\zhantai.e"; DestDir: "{app}"; Flags: ignoreversion

[code]
procedure InitializeWizard();
begin
WizardForm.LICENSEACCEPTEDRADIO.checked:= true;
end;

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

