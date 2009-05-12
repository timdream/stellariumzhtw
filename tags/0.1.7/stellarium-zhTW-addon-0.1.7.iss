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
AppVerName=Stellarium zh-TW Addons 0.1.7
AppVersion=0.1.7
AppPublisher=timdream
AppPublisherURL=http://timc.idv.tw/stellarium/
AppSupportURL=http://timc.idv.tw/stellarium/
AppUpdatesURL=http://timc.idv.tw/stellarium/
DefaultDirName={pf}\Stellarium
DirExistsWarning=no
DisableReadyMemo=no
DisableReadyPage=no
DefaultGroupName=Stellarium
AllowNoIcons=yes
SourceDir=.\
OutputDir=..\..\build
OutputBaseFilename=stellarium-zhTW-addon-0.1.7
Compression=lzma
SolidCompression=yes

Uninstallable=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
; From http://www.innosetup.com/files/istrans/ChineseTrad-2/ChineseTrad-2-5.1.11.isl
Name: "zh_TW"; MessagesFile: "..\..\external\ChineseTrad-2-5.1.11.isl"

[CustomMessages]
touchinstallation=Install additional font and config into Stellarium (need Administrator privilege).
touchmyconfig=Overwrite my configration.
zh_TW.touchinstallation=為 Stellarium 增加顯示中文能力 (需管理者權限)
zh_TW.touchmyconfig=將我的設定覆蓋，修正語系與地點等設定 (會蓋掉之前所有修改)

[Components]
Name: touchinstallation; Description: "{cm:touchinstallation}"; Types: full custom;
Name: touchmyconfig; Description: "{cm:touchmyconfig}"; Types: full compact custom;

; Lets clean up some old files made by addons pack and old versions of Stellarium.
[InstallDelete]
Type: files; Name: "{localappdata}\Stellarium\config.ini"; Components: touchmyconfig
Type: dirifempty; Name: "{localappdata}\Stellarium"; Components: touchmyconfig
Type: files; Name: "{userappdata}\Stellarium\config.ini"; Components: touchmyconfig
Type: dirifempty; Name: "{userappdata}\Stellarium"; Components: touchmyconfig
Type: files; Name: "{userappdata}\..\Stellarium\config.ini"; Components: touchmyconfig
Type: dirifempty; Name: "{userappdata}\..\Stellarium"; Components: touchmyconfig

[Files]
Source: "LICENSE-ZH-ADDONS.txt"; DestDir: "{app}"; Components: touchinstallation
Source: "fontmap.dat"; DestDir: "{app}\data"; Components: touchinstallation
Source: "user_locations.txt"; DestDir: "{app}\data"; Components: touchinstallation
Source: "default_config_en.ini"; DestDir: "{app}\data"; Components: touchinstallation
Source: "default_config.ini"; DestDir: "{app}\data"; Components: touchinstallation
; From http://apt.nc.hcc.edu.tw/pub/FreeSoftware/free_fonts/wangttf/wt011.ttf
; GPL Free Font
Source: "..\..\external\wt011.ttf"; DestDir: "{app}\data"; Components: touchinstallation

Source: "config.ini"; DestDir: "{userappdata}\Stellarium"; Components: touchmyconfig
