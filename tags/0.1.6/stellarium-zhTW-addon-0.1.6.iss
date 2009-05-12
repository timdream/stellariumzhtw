;To make your own Stellarium addon script
;please remove my name and URL on AppPublisher

[Setup]
; From http://stellarium.svn.sourceforge.net/viewvc/stellarium/branches/stellarium-StelPainter/stellarium/data/icon.bmp
; Stellarium source at Soruceforge
WizardSmallImageFile=..\..\external\icon.bmp
; From http://stellarium.svn.sourceforge.net/viewvc/stellarium/branches/stellarium-StelPainter/stellarium/data/splash.bmp
; Stellarium source at Soruceforge
WizardImageFile=splash.bmp

WizardImageStretch=no
WizardImageBackColor=clBlack

AppName=Stellarium zh-TW Addons
AppVerName=Stellarium zh-TW Addons 0.1.6
AppVersion=0.1.6
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
OutputBaseFilename=stellarium-zhTW-addon-0.1.6
Compression=lzma
SolidCompression=yes

Uninstallable=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
; From http://www.innosetup.com/files/istrans/ChineseTrad-2/ChineseTrad-2-5.1.11.isl
Name: "zh_TW"; MessagesFile: "..\..\external\ChineseTrad-2-5.1.11.isl"

; Lets clean up some old files made by addons pack and old versions of Stellarium.
[InstallDelete]
Type: files; Name: "{localappdata}\Stellarium\config.ini"
Type: dirifempty; Name: "{localappdata}\Stellarium"
Type: files; Name: "{userappdata}\Stellarium\config.ini"
Type: dirifempty; Name: "{userappdata}\Stellarium"
Type: files; Name: "{userappdata}\..\Stellarium\config.ini"
Type: dirifempty; Name: "{userappdata}\..\Stellarium"

[Files]
Source: "LICENSE-ZH-ADDONS.txt"; DestDir: "{app}"
Source: "fontmap.dat"; DestDir: "{app}\data"
Source: "user_locations.txt"; DestDir: "{app}\data"
Source: "default_config_en.ini"; DestDir: "{app}\data"
Source: "default_config.ini"; DestDir: "{app}\data"
; From http://apt.nc.hcc.edu.tw/pub/FreeSoftware/free_fonts/wangttf/wt011.ttf
; GPL Free Font
Source: "..\..\external\wt011.ttf"; DestDir: "{app}\data"
; Complete translation from Launchpad
Source: "stellarium.mo"; DestDir: "{app}\locale\zh_TW\LC_MESSAGES"

Source: "config.ini"; DestDir: "{userappdata}\Stellarium"
