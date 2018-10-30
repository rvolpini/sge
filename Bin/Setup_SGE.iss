; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SGE"
#define MyAppVersion "SGE v1.0.25"
#define MyAppPublisher "Agil Soluções em Softwares"
#define MyAppURL "http://www.agilsotwares.com.br/"
#define MyAppExeName "SGE.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1750BCC4-2444-458F-90C9-1CE8F90E5629}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\Program Files (x86)\Agil Softwares\{#MyAppName}
DefaultGroupName=SGE
OutputDir=D:\Projetos\ASS\SGE\trunk\Bin\Setup
OutputBaseFilename=Setup_SGE
SetupIconFile=D:\Projetos\ASS\SGE\trunk\_diversos\Imagens\Icones\Estoque.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: D:\Projetos\ASS\SGE\trunk\Bin\SGE.exe; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: D:\Projetos\ASS\SGE\trunk\Bin\SGE_PDV.exe; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: D:\Projetos\ASS\SGE\trunk\Bin\PrinterCupom.exe; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: D:\Projetos\ASS\SGE\trunk\Bin\Setup\Conexao.ini; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: D:\Projetos\ASS\SGE\trunk\_diversos\DLLs\Capicom\*.dll; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: D:\Projetos\ASS\SGE\trunk\_diversos\DLLs\MSVCR\*.dll; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: D:\Projetos\ASS\SGE\trunk\_diversos\DLLs\OpenSSL\*.dll; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: D:\Projetos\ASS\SGE\trunk\_diversos\DLLs\XMLSec\*.dll; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: D:\Projetos\ASS\SGE\trunk\Bin\Boleto\*.fr3; DestDir: {app}\Boleto; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Servidor Cliente Personalisado
Source: D:\Projetos\ASS\SGE\trunk\Bin\Report\*.fr3; DestDir: {app}\Report; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Servidor Cliente Personalisado
Source: D:\Projetos\ASS\SGE\trunk\Bin\Imagens\*; DestDir: {app}\Imagens; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Servidor Cliente Personalisado
Source: D:\Projetos\ASS\SGE\trunk\Bin\Schemas\*; DestDir: {app}\Schemas; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Servidor Cliente Personalisado
Source: ..\_diversos\miniprinter_delphi\MP2032.chm; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: ..\_diversos\miniprinter_delphi\MP2032.dll; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: ..\_diversos\miniprinter_delphi\MP2032.lib; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: ..\_diversos\miniprinter_delphi\UsbIO\*; DestDir: {app}; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: ..\..\..\..\..\db\Agil\AGIL_COMERCIO.FDB; DestDir: {app}\db; Flags: ignoreversion comparetimestamp uninsneveruninstall; Components: Servidor
Source: D:\Projetos\ASS\SGE\trunk\_diversos\DLLs\Capicom\capicom.exe; DestDir: {app}\apps; Flags: ignoreversion; Components: Servidor Cliente Personalisado
Source: C:\Users\Isaque\Downloads\FireBird\Firebird-2.5.5.26952_0_Win32.exe; DestDir: {app}\apps; Flags: ignoreversion; Components: Servidor Cliente Personalisado
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}; Flags: nowait postinstall skipifsilent unchecked
Filename: {app}\apps\capicom.exe; Description: Capicom; Flags: waituntilidle postinstall runasoriginaluser
Filename: {app}\apps\Firebird-2.5.5.26952_0_Win32.exe; Description: Firebird_2_5; Flags: waituntilidle runasoriginaluser
Filename: {app}\Conexao.ini; WorkingDir: {app}; Description: Arquivo de Configurações; Flags: postinstall; Tasks: ; Languages: 

[Components]
Name: Servidor; Description: Servidor; Types: full; Languages: ; Flags: fixed
Name: Cliente; Description: Cliente; Types: compact; Flags: fixed
Name: Personalisado; Description: Personalisado; Types: custom; Flags: fixed
