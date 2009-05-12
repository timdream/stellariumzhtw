;To make your own Stellarium addon script
;please remove my name and URL on AppPublisher

[Setup]
AppName=Stellarium zh-TW Addons
AppVerName=Stellarium zh-TW Addons 0.1.5
AppPublisher=timdream
AppPublisherURL=http://timc.idv.tw/stellarium/
AppSupportURL=http://timc.idv.tw/stellarium/
AppUpdatesURL=http://timc.idv.tw/stellarium/
DefaultDirName={pf}\Stellarium
DirExistsWarning=no
DisableReadyMemo=yes
DefaultGroupName=Stellarium
AllowNoIcons=yes
SourceDir=.\
OutputDir=..\..\build
OutputBaseFilename=stellarium-zhTW-addon-0.1.5
Compression=lzma
SolidCompression=yes

Uninstallable=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "zh_TW"; MessagesFile: "..\..\external\ChineseTrad-2-5.1.0.isl"

[Files]
Source: "LICENSE-ZHFONT.txt"; DestDir: "{app}"
Source: "fontmap.dat"; DestDir: "{app}\data"
Source: "..\..\external\wt011.ttf"; DestDir: "{app}\data"
Source: "default_config-en.ini"; DestDir: "{app}\data"
Source: "default_config.ini"; DestDir: "{app}\data"
Source: "config.ini"; DestDir: "{userappdata}\..\Stellarium"
;0.1
;Source: "config.ini"; DestDir: "{app}\config"
;Source: "stellarium.mo"; DestDir: "{app}\data\locale\zh_TW\LC_MESSAGES"


