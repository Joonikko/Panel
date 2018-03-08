SetWorkingDir %A_ScriptDir%
#SingleInstance force
#IfWinNotActive ahk_class MultitaskingViewFrame

Gui,Show, w560 h290, Panel
Gui,Add,Tab3,x0 y0 w590 h290 vTabName,Main|Install|System Information|Hotkeys

{ ; GUI MAIN TAB
	Gui,Tab, Main
	Gui,Add,Button,x10 y40 w50 h30,CMD
	Gui,Add,Button,x60 y40 w70 h30,PowerShell
	Gui,Add,Button,x130 y40 w50 h30,Control
	Gui,Add,Button,x180 y40 w40 h30,IE
	Gui,Add,Button,x290 y40 w80 h40,Log Out
	Gui,Add,Button,x370 y40 w100 h40,Reboot
	Gui,Add,Button,x470 y40 w80 h40,Shut Down
	Gui,Add,Button,x10 y70 w80 h30,Task Manager
	Gui,Add,Button,x90 y70 w60 h30,msconfig
	Gui,Add,Button,x150 y70 w43 h30,Edge
	; Gui,Add,Button,x193 y70 w35 h30,htop
	Gui,Add,Button,x290 y80 w40 h30,Mute
	Gui,Add,Button,x330 y80 w40 h30,Vol 30
	Gui,Add,Button,x370 y80 w45 h30,Vol 100
	Gui,Add,Text,x10 y110 w70 h20,Control Panel
	Gui,Add,Button,x10 y130 w40 h30,Time
	Gui,Add,Button,x50 y130 w60 h30,Network
	Gui,Add,Button,x110 y130 w60 h30,Update
	Gui,Add,Button,x170 y130 w60 h30,Language
	Gui,Add,Button,x10 y160 w60 h30,System
	Gui,Add,Button,x70 y160 w50 h30,Display
	Gui,Add,Button,x120 y160 w70 h30,Power Plan
	Gui,Add,Button,x190 y160 w50 h30,Desktop
	Gui,Add,Button,x290 y160 w40 h30,PC
	Gui,Add,Button,x330 y160 w40 h30,C:\
	Gui,Add,Button,x370 y160 w40 h30,Prog
	Gui,Add,Button,x410 y160 w70 h30,User Folder
	Gui,Add,Button,x480 y160 w60 h30,AppData
	Gui,Add,Button,x10 y190 w90 h30,Internet Settings
	Gui,Add,Button,x100 y190 w100 h30,Device Manager
	Gui,Add,Button,x200 y190 w60 h30,Devices
	Gui,Add,Button,x290 y190 w100 h30,Program Files x86
	Gui,Add,Button,x390 y190 w100 h30,Program Files x64
	Gui,Add,Button,x10 y220 w60 h30,Programs
	Gui,Add,Button,x70 y220 w100 h30,Default Programs
	Gui,Add,Button,x170 y220 w50 h30,Sound
	Gui,Add,Button,x290 y220 w50 h30,Start
	Gui,Add,Button,x340 y220 w70 h30,User Start
	Gui,Add,Button,x10 y250 w90 h30,User Accounts
	Gui,Add,Button,x100 y250 w50 h30,Hosts
	Gui,Add,Button,x150 y250 w70 h30,Host Folder
	Gui,Add,Button,x415 y80 w55 h30 gMainNotepad, Notepad
	Gui,Add,Button,x470 y80 w80 h30 gMainWordpad, Wordpad
	Gui,Add,Button,x410 y220 w120 h30 gINSW, List installed software
	Gui,Add,Checkbox,x295 y130  gAlwaysOnTop vAlwaysOnTopVar, Always on Top
	Gui, Add, Button, x495 y259 w30 h23, OK
	Gui, Add, ComboBox, x290 y260 w200 vComboBox, Action Center|- Action Center (Problem Reporting settings)|Add or Remove Programs|Administrative Tools|Automatic Updates|AutoPlay|Backup and Restore|Biometric Devices (if available)|BitLocker Drive Encryption (if available)|Bluetooth Devices (if available)|Color Management|Credential Manager|CSNW (Client Service for NetWare)|Date and Time|Default Programs|Desktop Gadgets|Device Manager|Devices and Printers|Display|Ease of Access Center|File Associations|Folder Options|Flash Player Settings Manager|Fonts|Game Controllers|Get Programs|Getting Started|HomeGroup|Indexing Options|Infrared (if available)|Intel Graphics (if available)|Internet Options|iSCSI Initiator|Java 7|Keyboard|Location and Other Sensors|Mail Setup (Outlook) (if available)|Mouse|Network and Sharing Center|Network Connections|Network Setup Wizard|Notification Area Icons|Offline Files|Parental Controls|Pen and Input Devices (if available)|Pen and Touch Settings|People Near Me|Performance Information and Tools|Performance Options|Personalization|- Personalization (Desktop Background)|- Personalization (Window Color and Appearance)|Phone and Modem|Power Options|- Power Options (Edit Plan settings)|- Power Options (System settings)|- Power Options (Create a Power Plan)|Printers and Faxes|Problem Reports and Solutions|Programs and Features|RealTek HD Audio Manager (if available)|Region and Language|- Region and Language (Location)|- Region and Language (Keyboards and Languages)|- Region and Language (Administrative)|RemoteApp and Desktop Connections|Scanners and Cameras|Scheduled Tasks|Screen Resolution|Sound|Sounds and Audio Devices|Speech Recognition Options|Speech Recognition|Sync Center|System|- System Properties (Advanced)|- System Properties (Computer Name)|- System Properties (Data Execution Prevention)|- System Properties (Hardware)|- System Properties (Performance)|- System Properties (Remote Access)|- System Properties (System Protection)|Tablet PC Settings (if available)|Taskbar and Start Menu|Text to Speech|Troubleshooting|User Accounts|Welcome Center|Windows Anytime Upgrade|Windows CardSpace|Windows Defender|Windows Firewall|Windows Marketplace|Windows Master Control Panel (All Tasks)|Windows Mobility Center|Windows Optional Features|Windows Sidebar Properties|Windows SideShow|Windows Update|- Windows Update (Change Settings)
}

{ ; GUI INSTALLATION TAB
	Gui,Tab, Install
	Gui,Add,Checkbox,x10 y30 w90 h20  	vChrome,      		GoogleChrome
	Gui,Add,Checkbox,x120 y30 w70 h20   vLibreOffice,   	LibreOffice
	Gui,Add,Checkbox,x230 y30 w70 h20   vDropbox,     		Dropbox
	Gui,Add,Checkbox,x330 y30 w100 h20  vRevoUninstaller, 	Revo Uninstaller
	Gui,Add,Checkbox,x470 y30 w80 h20   vClassicShell,    	Classic Shell
	Gui,Add,Checkbox,x470 y50 w105 h20  vClassicShellStart, Classic Start
	Gui,Add,Checkbox,x10 y50 w50 h20  	vOpera,       		Opera
	Gui,Add,Checkbox,x120 y50 w90 h20   vAdobeReader,   	AdobeReader
	Gui,Add,Checkbox,x230 y50 w90 h20   vGoogleDrive,   	Google Drive
	Gui,Add,Checkbox,x330 y50 w80 h20   vNotepadplusplus, 	Notepad++
	Gui,Add,Checkbox,x10 y70 w60 h20    vFirefox,     		Firefox
	Gui,Add,Checkbox,x120 y70 w80 h20   vThunderbird,   	Thunderbird
	Gui,Add,Checkbox,x230 y70 w70 h20   vOneDrive,      	OneDrive
	Gui,Add,Checkbox,x330 y70 w100 h20  vProcessExplorer, 	Process Explorer
	Gui,Add,Checkbox,x120 y90 w80 h20   vSumatraPDF,    	SumatraPDF
	Gui,Add,Checkbox,x330 y90 w70 h20   vFileZilla,     	FileZilla
	Gui,Add,Checkbox,x10 y100 w50 h20   v7zip,        		7-Zip
	Gui,Add,Checkbox,x230 y110 w50 h20  vGIMP,        		GIMP
	Gui,Add,Checkbox,x330 y110 w70 h20  vPutty,       		Putty
	Gui,Add,Checkbox,x10 y120 w60 h20   vSkype,       		Skype
	Gui,Add,Checkbox,x120 y120 w60 h20  vSpotify,     		Spotify
	Gui,Add,Checkbox,x230 y130 w60 h20  vPicasa,      		Picasa
	Gui,Add,Checkbox,x10 y140 w70 h20 	vCCleaner,    		CCleaner
	Gui,Add,Checkbox,x120 y140 w80 h20  vFoobar,      		Foobar2000
	Gui,Add,Checkbox,x230 y150 w70 h20  vIrfanview,   		IfranView
	Gui,Add,Checkbox,x120 y160 w50 h20  vVLC,       		VLC
	Gui,Add,Checkbox,x10 y170 w50 h20 	vJava,        		Java
	Gui,Add,Checkbox,x230 y170 w70 h20  vPaint,       		Paint.NET
	Gui,Add,Checkbox,x120 y180 w70 h20  vKLite,       		K-Lite Full
	Gui,Add,Checkbox,x10 y190 w50 h20 	vFlash,       		Flash
	Gui,Add,Checkbox,x230 y190 w70 h20  vInkscape,      	Inkscape
	Gui,Add,Checkbox,x230 y210 w90 h20  vImageglass,      	ImageGlass
	Gui,Add,Checkbox,x120 y200 w70 h20  vQuicktime,     	QuickTime
	Gui,Add,Checkbox,x10 y210 w70 h20 	vSilverlight,   	Silverlight
	Gui,Add,Checkbox,x120 y220 w80 h20  vCDburnerxp,    	CDBurnerXP
	Gui,Add,Checkbox,x10 y240 w60 h20 	vImDisk,      		ImDisk
	Gui,Add,Checkbox,x10 y260 w90 h20 	vImDiskToolkit,   	ImDisk Toolkit
	Gui,Add,Checkbox,x120 y240 w60 h20  viTunes,      		iTune
	Gui,Add,Checkbox,x120 y260 w80 h20  vNaps2,       		Naps2
	;Gui,Add,Checkbox,x230 y260 w60 h20  vAvast,       		Avast
	Gui,Add,Checkbox,x230 y240 w50 h20  vMSE,       		MSE
	Gui,Add,Checkbox,x230 y260 w90 h20  vMalwarebytes,    	Malwarebytes
	Gui,Add,Checkbox,x330 y180 w70 h20  vVC2008,      		2008
	Gui,Add,Checkbox,x330 y200 w70 h20  vVC2010,      		2010
	Gui,Add,Checkbox,x330 y220 w70 h20  vVC2012,      		2012
	Gui,Add,Checkbox,x330 y240 w70 h20  vVC2013,      		2013
	Gui,Add,Checkbox,x330 y260 w70 h20  vVC2015,      		2015
	Gui,Add,Checkbox,x400 y180 w70 h20  vDotnet35,      	3.5
	Gui,Add,Checkbox,x400 y200 w70 h20  vDotnet40,      	4.0
	Gui,Add,Checkbox,x400 y220 w70 h20  vDotnet45,      	4.5
	Gui,Add,Checkbox,x400 y240 w70 h20  vDotnet46,      	4.6
	Gui,Add,Checkbox,x400 y260 w70 h20  vDotnet461,     	4.6.1
	Gui,Add,Checkbox,x400 y160 w70 h20  vDotnetALL,     	All
	Gui,Add,Checkbox,x330 y160 w70 h20  vRedistALL,     	All
	Gui,Add,Text,x330 y145 w70 h15,   	VC Redist
	Gui,Add,Text,x400 y145 w60 h15,   	.NET

	Gui,Add,Button,x470 y170 w80 h40  gDefaultChoco,    Default Install
	Gui,Add,Button,x470 y90 w80 h30   gInstallChoco2,   CMD Install
	Gui,Add,Button,x470 y120 w80 h30  gInstallChoco1,   PS Install
	Gui,Add,Button,x470 y210 w80 h30  gUpdateChoco,   	Update All
	Gui,Add,Button,x470 y240 w80 h40,           				Install
}

{ ; GUI INFO TAB
	Gui, Tab, System Information

	Win32_BaseBord()
	{
			for objItem in ComObjGet("winmgmts:\\.\root\CIMV2").ExecQuery("SELECT * FROM Win32_BaseBoard")
					return { 1 : objItem.Manufacturer, 2 : objItem.Product }
	}

	Win32_BB := Win32_BaseBord()

	RegRead, CPUNAme, HKEY_LOCAL_MACHINE, HARDWARE\DESCRIPTION\System\CentralProcessor\0, ProcessorNameString
	RegRead, BuildNum, HKEY_LOCAL_MACHINE, SOFTWARE\Microsoft\Windows NT\CurrentVersion, CurrentBuild
	RegRead, OSName, HKEY_LOCAL_MACHINE, SOFTWARE\Microsoft\Windows NT\CurrentVersion, ProductName
	RegRead, WinVersion, HKEY_LOCAL_MACHINE, SOFTWARE\Microsoft\Windows NT\CurrentVersion, CurrentVersion

	if (BuildNum = 7600){
		VersionNumber = Windows 7
		}
	if (BuildNum = 7601){
		VersionNumber = Windows 7 SP1
		}
	if (BuildNum = 9200){
		VersionNumber = Windows 8
		}
	if (BuildNum = 9600){
		VersionNumber = Windows 8.1
		}
	if (BuildNum = 10240){
		VersionNumber = 1507 (Released 2015-07-29) Not supported by MS Anymore
		}
	if (BuildNum = 10586){
		VersionNumber = 1511 November Update (Released 2015-11-10)
		}
	if (BuildNum = 14393){
		VersionNumber = 1607 Anniversary Update (Released 2016-08-02)
		}
	if (BuildNum = 15063){
		VersionNumber = 1703 Creators Update (Released 2017-04-05)
		}
	if (BuildNum = 16299){
		VersionNumber = 1709 Fall Creators Update (Released 2017-10-17)
		}
	if (BuildNum > 16299){
		VersionNumber = >1709
		}

	Gui, Font, Bold
	Gui, Add, Text, x20 y30, System Information
	Gui, Font, Norm
	Gui, Add, Text, x20 y50, % "Manufacturer:`t" Win32_BB[1] "`n"
							. "Modell:`t`t"     Win32_BB[2] "`n"
							. "PC Name: `t" a_computername "`n"
							. "Username: `t" A_UserName "`n"
							. "IP Address:`t" a_ipaddress1 "`n`n"
							. "CPU Model:`t" CPUName "`n"
							. "OS Name: `t" OSName "`n"
							. "Build Number: `t" BuildNum . "  -  Version " . VersionNumber "`n"
							. "Version: `t" WinVersion "`n`n"
							. "Display: `t" A_ScreenWidth " x " A_ScreenHeight " @ " A_ScreenDPI " DPI`n"

	Win32_VideoController()
	{
			for objItem in ComObjGet("winmgmts:\\.\root\CIMV2").ExecQuery("SELECT * FROM Win32_VideoController")
					return { 1 : objItem.AdapterCompatibility, 2 : objItem.Description }
	}
	Win32_VC := Win32_VideoController()

	Gui, Font, bold
	Gui, Add, Text, x20 y220, GPU Information
	Gui, Font, norm
	Gui, Add, Text, x20 y240, % "Manufacturer:`t" Win32_VC[1] "`n"
					. "Modell:`t`t"     Win32_VC[2]


	Gui, Add, Text, x450 y40, Panel v1.01
}

{ ; GUI HOTKEYS TAB
	Gui, Tab, Hotkeys

	Gui, Font, Bold
	Gui, Add, Text, x10 y30, Global hotkeys
	Gui, Font, Norm
	Gui, Add, Text, xm yp+15, Alt+§  -  WindowShade
	Gui, Add, Text, xm yp+15, Alt+L/R Mouse  -  Alt-drag
	Gui, Add, Text, xm yp+15, Ctrl+Q  -  Send Alt-F4
	Gui, Add, Text, xm yp+15, Ctrl+H  -  Minimize window

	Gui, Font, Bold
	Gui, Add, Text, x200 y30, Explorer
	Gui, Font, Norm
	Gui, Add, Text, xp yp+15, F1     -  Up directory
	Gui, Add, Text, xp yp+15, Alt+1  -  large icons
	Gui, Add, Text, xp yp+15, Alt+2  -  List
	Gui, Add, Text, xp yp+15, Alt+3  -  Details
	Gui, Add, Text, xp yp+15, Alt+4  -  Tiles

	Gui, Add, Text, xp yp+15, Alt+Q  -  Medium icons
	Gui, Add, Text, xp yp+15, Alt+W  -  Small icons
	Gui, Add, Text, xp yp+15, Alt+E  -  Content
	Gui, Add, Text, xp yp+15, Alt+A  -  Extra large icons
	Gui, Add, Text, xp yp+15, Alt+N  -  Show/Hide sidebar

	Gui, Font, Bold
	Gui, Add, Text, x350 y30, Panel
	Gui, Font, Norm
	Gui, Add, Text, xp yp+15, F1  -  Cmd.exe
	Gui, Add, Text, xp yp+15, F2  -  Run -prompt
	; Gui, Add, Text, xp yp+15, F3  -
	; Gui, Add, Text, xp yp+15, F4  -
	Gui, Add, Text, xp yp+15, F5  -  Reload
	Gui, Add, Text, xp yp+15, F6  -  Reload as admin
	Gui, Add, Text, xp yp+15, F7  -  WUMT
	Gui, Add, Text, xp yp+15, F8  -  CCleaner
	Gui, Add, Text, xp yp+15, F9  -  Windows Update
	; Gui, Add, Text, xp yp+15, F10  -
	; Gui, Add, Text, xp yp+15, F11  -
	; Gui, Add, Text, xp yp+15, F12  -
	Gui, Add, Text, xp yp+15, Alt+Q  -  UAC Settings
	Gui, Add, Text, xp yp+15, Alt+W  -  Control panel
	Gui, Add, Text, xp yp+15, Alt+D  -  Task Manager
	Gui, Add, Text, xp yp+15, Alt+F1  -  Turn screen off
}

{ ; Global Variables
	ws_MinHeight = 25
	SetWinDelay,2
	CoordMode,Mouse
}

{ ; WindowShade
	!§::
	WinGet, ws_ID, ID, A
	Loop, Parse, ws_IDList, |
	{
		IfEqual, A_LoopField, %ws_ID%
		{
			StringTrimRight, ws_Height, ws_Window%ws_ID%, 0
			WinMove, ahk_id %ws_ID%,,,,, %ws_Height%
			StringReplace, ws_IDList, ws_IDList, |%ws_ID%
			return
		}
	}
	WinGetPos,,,, ws_Height, A
	ws_Window%ws_ID% = %ws_Height%
	WinMove, ahk_id %ws_ID%,,,,, %ws_MinHeight%
	ws_IDList = %ws_IDList%|%ws_ID%
	return

	ExitSub:
	Loop, Parse, ws_IDList, |
	{
		if A_LoopField =
			continue
		StringTrimRight, ws_Height, ws_Window%A_LoopField%, 0
		WinMove, ahk_id %A_LoopField%,,,,, %ws_Height%
	}
	ExitApp
	return
	}

{ ; Alt Drag
	Drag:
	return

	!LButton::
	If DoubleAlt
	{
			MouseGetPos,,,KDE_id
			; This message is mostly equivalent to WinMinimize,
			; but it avoids a bug with PSPad.
			PostMessage,0x112,0xf020,,,ahk_id %KDE_id%
			DoubleAlt := false
			return
	}
	; Get the initial mouse position and window id, and
	; abort if the window is maximized.
	MouseGetPos,KDE_X1,KDE_Y1,KDE_id
	WinGet,KDE_Win,MinMax,ahk_id %KDE_id%
	If KDE_Win
			return
	; Get the initial window position.
	WinGetPos,KDE_WinX1,KDE_WinY1,,,ahk_id %KDE_id%
	Loop
	{
			GetKeyState,KDE_Button,LButton,P ; Break if button has been released.
			If KDE_Button = U
					break
			MouseGetPos,KDE_X2,KDE_Y2 ; Get the current mouse position.
			KDE_X2 -= KDE_X1 ; Obtain an offset from the initial mouse position.
			KDE_Y2 -= KDE_Y1
			KDE_WinX2 := (KDE_WinX1 + KDE_X2) ; Apply this offset to the window position.
			KDE_WinY2 := (KDE_WinY1 + KDE_Y2)
			WinMove,ahk_id %KDE_id%,,%KDE_WinX2%,%KDE_WinY2% ; Move the window to the new position.
	}
	return

	!RButton::
	If DoubleAlt
	{
			MouseGetPos,,,KDE_id
			; Toggle between maximized and restored state.
			WinGet,KDE_Win,MinMax,ahk_id %KDE_id%
			If KDE_Win
					WinRestore,ahk_id %KDE_id%
			Else
					WinMaximize,ahk_id %KDE_id%
			DoubleAlt := false
			return
	}
	; Get the initial mouse position and window id, and
	; abort if the window is maximized.
	MouseGetPos,KDE_X1,KDE_Y1,KDE_id
	WinGet,KDE_Win,MinMax,ahk_id %KDE_id%
	If KDE_Win
			return
	; Get the initial window position and size.
	WinGetPos,KDE_WinX1,KDE_WinY1,KDE_WinW,KDE_WinH,ahk_id %KDE_id%
	; Define the window region the mouse is currently in.
	; The four regions are Up and Left, Up and Right, Down and Left, Down and Right.
	If (KDE_X1 < KDE_WinX1 + KDE_WinW / 2)
		 KDE_WinLeft := 1
	Else
		 KDE_WinLeft := -1
	If (KDE_Y1 < KDE_WinY1 + KDE_WinH / 2)
		 KDE_WinUp := 1
	Else
		 KDE_WinUp := -1
	Loop
	{
			GetKeyState,KDE_Button,RButton,P ; Break if button has been released.
			If KDE_Button = U
					break
			MouseGetPos,KDE_X2,KDE_Y2 ; Get the current mouse position.
			; Get the current window position and size.
			WinGetPos,KDE_WinX1,KDE_WinY1,KDE_WinW,KDE_WinH,ahk_id %KDE_id%
			KDE_X2 -= KDE_X1 ; Obtain an offset from the initial mouse position.
			KDE_Y2 -= KDE_Y1
			; Then, act according to the defined region.
			WinMove,ahk_id %KDE_id%,, KDE_WinX1 + (KDE_WinLeft+1)/2*KDE_X2  ; X of resized window
															, KDE_WinY1 +   (KDE_WinUp+1)/2*KDE_Y2  ; Y of resized window
															, KDE_WinW  -     KDE_WinLeft  *KDE_X2  ; W of resized window
															, KDE_WinH  -       KDE_WinUp  *KDE_Y2  ; H of resized window
			KDE_X1 := (KDE_X2 + KDE_X1) ; Reset the initial position for the next iteration.
			KDE_Y1 := (KDE_Y2 + KDE_Y1)
	}
	return
}

{ ; BUTTON COMMANDS Main

	ButtonCMD:
		Run *runas cmd
	return

	ButtonPowerShell:
		Run *runas powershell.exe
	return

	ButtonControl:
		Run control
	return

	ButtonTaskManager:
		Run taskmgr.exe
	return

	ButtonIE:
		Run iexplore.exe
	return

	Buttonmsconfig:
		run msconfig
	return

	ButtonEdge:
		run microsoft-edge:
	return

	ButtonMute:
		Send, {Volume_Mute}
	return

	ButtonVol30:
		SoundSet, 30
	return

	ButtonVol100:
		SoundSet, 100
	return

	ButtonLogOut:
		Run *runas %comspec% /k shutdown -l
	return

	ButtonReboot:
		Run *runas %comspec% /k shutdown -t 0 -r
	return

	ButtonShutDown:
		Run *runas %comspec% /k shutdown -t 0 -s
	return

	; ButtonHtop:
	;   Run %A_ScriptDir%/htopmini.exe
	; return

	MainNotepad:
		run notepad
	return

	MainWordpad:
		Run wordpad
	return
}

{ ; BUTTON COMMANDS - control panel
	ButtonTime:
		Run, control /name Microsoft.DateAndTime
	return

	ButtonNetwork:
		Run, control netconnections
	return

	ButtonUpdate:
		Run, control /name Microsoft.WindowsUpdate
	return

	ButtonSystem:
		Run, control /name Microsoft.System
	return

	ButtonDisplay:
		Run, control /name Microsoft.Display
	return

	ButtonPowerPlan:
		Run, control /name Microsoft.PowerOptions
	return

	ButtonInternetSettings:
		run inetcpl.cpl   ; Internet options
	return

	ButtonDeviceManager:
		Run, devmgmt.msc
	return

	ButtonPrograms:
		Run, control appwiz.cpl
	return

	ButtonDevices:
		Run, control /name Microsoft.DevicesAndPrinters
	return

	ButtonDefaultPrograms:
		Run, control /name Microsoft.DefaultPrograms
	return

	ButtonUserAccounts:
		Run, control /name Microsoft.UserAccounts
	return

	ButtonSound:
		Run, control /name Microsoft.Sound
	return

	ButtonDesktop:
		run control desktop
	return

	ButtonLanguage:
		Run, control /name Microsoft.RegionAndLanguage
	return

	ButtonHosts:
		Run *runas notepad.exe "%SystemRoot%\System32\drivers\etc\hosts"
	return

	ButtonHostFolder:
		Run C:\Windows\System32\drivers\etc
	return

	ButtonPC:
		Run explorer.exe =
	return

	ButtonC:\:
		run C:\
	return

	ButtonProg:
		Run, explorer C:\ProgramData
	return

	ButtonUserFolder:
		Run, explorer C:\Users\%A_UserName%
	return

	ButtonApp:
		Run, explorer C:\Users\%A_UserName%\AppData
	return

	ButtonAppData:
		Run %appdata%
	return

	ButtonProgramFilesx86:
		Run, C:\Program Files (x86)
	return

	ButtonProgramFilesx64:
		run, C:\Program Files
	return

	ButtonStart:
		run C:\ProgramData\Microsoft\Windows\Start Menu
	return

	ButtonUserStart:
		run %appdata%\Microsoft\Windows\Start Menu
	return
}

{ ; BUTTON COMMANDS - install
	ButtonInstall:
	Gui, Submit, NoHide
	myListOfPrograms := "choco install "

	If Chrome = 1
	myListOfPrograms .= " googlechrome"

	If LibreOffice = 1
	myListOfPrograms .= " libreoffice"

	If Dropbox = 1
	myListOfPrograms .= " dropbox"

	If RevoUninstaller = 1
	myListOfPrograms .= " revo.uninstaller"

	If ClassicShell = 1
	myListOfPrograms .= " classic-shell"

	If ClassicShellStart = 1
	myListOfPrograms .= " classic-shell -installArgs ADDLOCAL=ClassicStartMenu"

	If Opera = 1
	myListOfPrograms .= " opera"

	If AdobeReader = 1
	myListOfPrograms .= " adobereader"

	If SumatraPDF = 1
	myListOfPrograms .= " sumatrapdf"

	If GoogleDrive = 1
	myListOfPrograms .= " googledrive"

	If notepadplusplus = 1
	myListOfPrograms .= " notepadplusplus"

	If Firefox = 1
	myListOfPrograms .= " firefox"

	If Thunderbird = 1
	myListOfPrograms .= " thunderbird"

	If OneDrive = 1
	myListOfPrograms .= " onedrive"

	If ProcessExplorer = 1
	myListOfPrograms .= " procexp"

	If filezilla = 1
	myListOfPrograms .= " filezilla"

	If 7zip = 1
	myListOfPrograms .= " 7zip"

	If putty = 1
	myListOfPrograms .= " putty"

	If skype = 1
	myListOfPrograms .= " skype"

	If spotify = 1
	myListOfPrograms .= " spotify"

	If picasa = 1
	myListOfPrograms .= " picasa"

	If ccleaner = 1
	myListOfPrograms .= " ccleaner"

	If foobar = 1
	myListOfPrograms .= " foobar2000"

	If irfanview = 1
	myListOfPrograms .= " irfanview"

	If vlc = 1
	myListOfPrograms .= " vlc"

	If java = 1
	myListOfPrograms .= " javaruntime"

	If paint = 1
	myListOfPrograms .= " paint.net"

	If klite = 1
	myListOfPrograms .= " k-litecodecpackfull"

	If flash = 1
	myListOfPrograms .= " flashplayerplugin flashplayeractivex"

	If inkscape = 1
	myListOfPrograms .= " inkscape"

	If imageglass = 1
	myListOfPrograms .= " imageglass"

	If quicktime = 1
	myListOfPrograms .= " quicktime"

	If silverlight = 1
	myListOfPrograms .= " silverlight"

	If cdburnerxp = 1
	myListOfPrograms .= " cdburnerxp"

	If mse = 1
	myListOfPrograms .= " microsoftsecurityessentials"

	If imdisk = 1
	myListOfPrograms .= " imdisk"

	If imdisktoolkit = 1
	myListOfPrograms .= " imdisk-toolkit"

	If itunes = 1
	myListOfPrograms .= " itunes"

	If malwarebytes = 1
	myListOfPrograms .= " malwarebytes"

	If Naps2 = 1
	myListOfPrograms .= " naps2"

	If avast = 1
	myListOfPrograms .= " avastfreeantivirus"

	If vc2008 = 1
	myListOfPrograms .= " vcredist2008"

	If vc2010 = 1
	myListOfPrograms .= " vcredist2010"

	If vc2012 = 1
	myListOfPrograms .= " vcredist2012"

	If vc2013 = 1
	myListOfPrograms .= " vcredist2013"

	If vc2015 = 1
	myListOfPrograms .= " vcredist2015"

	If dotnet35 = 1
	myListOfPrograms .= " dotnet3.5"

	If dotnet40 = 1
	myListOfPrograms .= " dotnet4.0"

	If dotnet45 = 1
	myListOfPrograms .= " dotnet4.5"

	If dotnet46 = 1
	myListOfPrograms .= " dotnet4.6"

	If dotnet461 = 1
	myListOfPrograms .= " dotnet4.6.1"

	If dotnetALL = 1
	myListOfPrograms .= " dotnet3.5 dotnet4.0 dotnet4.5 dotnet4.6 dotnet4.6.1"

	If redistALL = 1
	myListOfPrograms .= " vcredist2008 vcredist2010 vcredist2012 vcredist2013 vcredist2015"

	Run *runas %comspec% /k %myListOfPrograms% -y
	return

	DefaultChoco:
		Run *runas %comspec% /k choco install 7zip vlc adobereader googlechrome -y
	return

	InstallChoco1:
		Run *runas powershell.exe iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
	return

	InstallChoco2:
		Run *runas %comspec% /k @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
	return

	UpdateChoco:
		Run *runas %comspec% /k cup all -y
	return
}

{ ; GUI 2 - Folders
	F12::
		Gui, 2:New
		Gui, +alwaysontop
		Gui,Add,Button,x+5 y+5 w50 h30, PC
		Gui,Add,Button,x+5  w50 h30, C:\
		Gui,Add,Button,x+5  w50 h30, D:\
		; Gui,Add,Button,x+5  w50 h30, Z:\
		Gui,Add,Button,x+5  h30, Program Files
		Gui,Add,Button,x+5  h30, Program Files x86
		Gui,Add,Button,x+5  h30, User
		Gui,Add,Button,x+5  h30, Downloads
		Gui,Add,Button,x+5  h30, Documents
		Gui,Add,Button,x+5  h30, Desktop
		Gui,Add,Button,x+5  h30, AppData
		Gui, Show,  h40, Folders
	return


	2ButtonPC:
		Run explorer.exe
	return

	2ButtonC:\:
		run C:\
	return

	2ButtonD:\:
		run D:\
	return

	; 2ButtonZ:\:
	;   run Z:\
	; return

	2ButtonProg:
		Run, explorer C:\ProgramData
	return

	2ButtonUser:
		Run, explorer C:\Users\%A_UserName%
	return

	2ButtonDownloads:
		Run, explorer C:\Users\%A_UserName%\Downloads
	return

	2ButtonDocuments:
		Run, explorer C:\Users\%A_UserName%\Documents
	return

	2ButtonDesktop:
		Run, explorer C:\Users\%A_UserName%\Desktop
	return

	2ButtonAppData:
		Run %appdata%
	return

	2ButtonProgramFilesx86:
		Run, C:\Program Files (x86)
	return

	2ButtonProgramFiles:
		run, C:\Program Files
	return
}

{ ; Checkbox scripts
	AlwaysOnTop:
	GuiControlGet, Checked,, AlwaysOnTopVar
	If Checked = 1
		WinGet, currentWindow, ID, A
		WinGet, ExStyle, ExStyle, ahk_class AutoHotkeyGUI
		if (ExStyle & 0x8)  ; 0x8 is WS_EX_TOPMOST.
		{
			Winset, AlwaysOnTop, off, ahk_class AutoHotkeyGUI
		}
		else
		{
			WinSet, AlwaysOnTop, on, ahk_class AutoHotkeyGUI
	}
	return
}

{ ; HOTKEYS - Global and Application Specific
	^q::SendInput !{F4}
	^H::SendInput, #{down}
	#IfWinActive ahk_class CabinetWClass ; Windows Explorer -views
	F1::Send !{up}
	!1::Send ^+2 ; Large icons
	!2::Send ^+5 ; List
	!3::Send ^+6 ; Details
	!4::Send ^+7 ; Tiles
	!Q::Send ^+3 ; Medium Icons
	!W::Send ^+4 ; Small Icons
	!E::Send ^+8 ; Content
	!a::Send ^+1 ; Extra large icons
	!n::Send !d!vn{enter}ln
}

{ ; HOTKEYS - Panel Specific
	#IfWinActive, ahk_class AutoHotkeyGUI

	+1::GuiControl, Choose, TabName, |1
	+2::GuiControl, Choose, TabName, |2
	+3::GuiControl, Choose, TabName, |3
	+4::GuiControl, Choose, TabName, |4
	+5::GuiControl, Choose, TabName, |5
	+6::GuiControl, Choose, TabName, |6

	!WheelDown:: SendInput,{CtrlDown}{Tab}{CtrlUp}
	!WheelUp:: SendInput, {CtrlDown}{ShiftDown}{Tab}{ShiftUp}{CtrlUp}


	; !1::
	;   DllCall("SystemParametersInfo", UInt, 0x14, UInt, 0, Str, A_WinDir . "\Web\Screen\img105.jpg", UInt, 1)
	; return

	; !2::
	;   DllCall("SystemParametersInfo", UInt, 0x14, UInt, 0, Str, A_WorkingDir . "\wp0.png", UInt, 1)
	; return

	; !3::
	;   DllCall("SystemParametersInfo", UInt, 0x14, UInt, 0, Str, A_WorkingDir . "\wp1.jpg", UInt, 1)
	; return

	; !s::Run %A_ScriptDir%/htopmini.exe
	!d::Run taskmgr.exe
	!w::Run control.exe
	!q::Run, control /name Microsoft.UserAccounts

	!F1::
	SendMessage,0x112,0xF170,2,,Program Manager
	Return

	F1::Run *RunAs Cmd.exe
	F2::Send #r
	; F3::Run %A_ScriptDir%/Removable.exe
	F5::Reload

	F6::
		Run *RunAs Panel.exe
	return

	F7::
		Run *RunAs wumt_x64.exe
	return

	F8::
		Run *RunAs CCleaner.exe
	return

	F9::
		Run, control /name Microsoft.WindowsUpdate
	return

	; F10::
	;   Run Removable.exe
	; return

	; F12::
	;   FileRead, Clipboard, %A_ScriptDir%/hosts.txt
	;   ClipWait
	;   clipboard = %clipboard%
	; return

	Escape::Exitapp
}

{ ; ButtonOK
	ButtonOK:
	Gui, Submit, NoHide
	If ComboBox = Action Center
	Run, control /name Microsoft.ActionCenter
	Else If ComboBox = - Action Center (Problem Reporting settings)
	Run, control /name Microsoft.ActionCenter /page pageSettings
	Else If ComboBox = Add or Remove Programs
	Run, control appwiz.cpl
	Else If ComboBox = Administrative Tools
	Run, control /name Microsoft.AdministrativeTools
	Else If ComboBox = Automatic Updates
	Run, control wuaucpl.cpl
	Else If ComboBox = AutoPlay
	Run, control /name Microsoft.AutoPlay
	Else If ComboBox = Backup and Restore
	Run, control /name Microsoft.BackupAndRestore
	Else If ComboBox = Biometric Devices (if available)
	Run, control /name Microsoft.BiometricDevices
	Else If ComboBox = BitLocker Drive Encryption (if available)
	Run, control /name Microsoft.BitLockerDriveEncryption
	Else If ComboBox = Bluetooth Devices (if available)
	Run, control /name Microsoft.BluetoothDevices
	Else If ComboBox = Color Management
	Run, control /name Microsoft.ColorManagement
	Else If ComboBox = Credential Manager
	Run, control /name Microsoft.CredentialManager
	Else If ComboBox = CSNW (Client Service for NetWare)
	Run, control nwc.cpl
	Else If ComboBox = Date and Time
	Run, control /name Microsoft.DateAndTime
	Else If ComboBox = Default Programs
	Run, control /name Microsoft.DefaultPrograms
	Else If ComboBox = Desktop Gadgets
	Run, control /name Microsoft.DesktopGadgets
	Else If ComboBox = Device Manager
	Run, control /name Microsoft.DeviceManager
	Else If ComboBox = Devices and Printers
	Run, control /name Microsoft.DevicesAndPrinters
	Else If ComboBox = Display
	Run, control /name Microsoft.Display
	Else If ComboBox = Ease of Access Center
	Run, control /name Microsoft.EaseOfAccessCenter
	Else If ComboBox = File Associations
	Run, control.exe /name Microsoft.DefaultPrograms /page pageFileAssoc
	Else If ComboBox = Flash Player Settings Manager
	Run, %A_WinDir%\System32\FlashPlayerCPLApp.cpl
	Else If ComboBox = Folder Options
	Run, control /name Microsoft.FolderOptions
	Else If ComboBox = Fonts
	Run, control /name Microsoft.Fonts
	Else If ComboBox = Game Controllers
	Run, control /name Microsoft.GameControllers
	Else If ComboBox = Get Programs
	Run, control /name Microsoft.GetPrograms
	Else If ComboBox = Getting Started
	Run, control /name Microsoft.GettingStarted
	Else If ComboBox = HomeGroup
	Run, control /name Microsoft.HomeGroup
	Else If ComboBox = Indexing Options
	Run, control /name Microsoft.IndexingOptions
	Else If ComboBox = Infrared (if available)
	Run, control /name Microsoft.Infrared
	Else If ComboBox = Intel Graphics (if available)
	Run, %A_WinDir%\System32\igfxcpl.cpl
	Else If ComboBox = Internet Options
	Run, control /name Microsoft.InternetOptions
	Else If ComboBox = iSCSI Initiator
	Run, control /name Microsoft.iSCSIInitiator
	Else If ComboBox = Java 7
	Run, %ProgramFiles%\Java\jre7\bin\javacpl.exe
	Else If ComboBox = Keyboard
	Run, control /name Microsoft.Keyboard
	Else If ComboBox = Location and Other Sensors
	Run, control /name Microsoft.LocationAndOtherSensors
	Else If ComboBox = Mail Setup (Outlook) (if available)
	Run, control mlcfg32.cpl
	Else If ComboBox = Mouse
	Run, control /name Microsoft.Mouse
	Else If ComboBox = Network and Sharing Center
	Run, control /name Microsoft.NetworkAndSharingCenter
	Else If ComboBox = Network Connections
	Run, control netconnections
	Else If ComboBox = Network Setup Wizard
	Run, control netsetup.cpl
	Else If ComboBox = Notification Area Icons
	Run, control /name Microsoft.NotificationAreaIcons
	Else If ComboBox = Offline Files
	Run, control /name Microsoft.OfflineFiles
	Else If ComboBox = Parental Controls
	Run, control /name Microsoft.ParentalControls
	Else If ComboBox = Pen and Input Devices (if available)
	Run, control /name Microsoft.PenAndInputDevices
	Else If ComboBox = Pen and Touch Settings
	Run, %A_WinDir%\System32\TabletPC.cpl
	Else If ComboBox = People Near Me
	Run, control /name Microsoft.PeopleNearMe
	Else If ComboBox = Performance Information and Tools
	Run, control /name Microsoft.PerformanceInformationAndTools
	Else If ComboBox = Performance Options
	Run, SystemPropertiesPerformance.exe
	Else If ComboBox = Personalization
	Run, control.exe /name Microsoft.Personalization ;Note - Win 7 Starter and Basic Editions do not support control.exe /name Microsoft.Personalization command
	Else If ComboBox = - Personalization (Desktop Background)
	Run, control.exe /name Microsoft.Personalization /page pageWallpaper
	Else If ComboBox = - Personalization (Window Color and Appearance)
	Run, control.exe /name Microsoft.Personalization /page pageColorization
	Else If ComboBox = Phone and Modem
	Run, control /name Microsoft.PhoneAndModemOptions
	Else If ComboBox = Power Options
	Run, control /name Microsoft.PowerOptions
	Else If ComboBox = - Power Options (Edit Plan settings)
	Run, control /name Microsoft.PowerOptions /page pagePlanSettings
	Else If ComboBox = - Power Options (System settings)
	Run, control /name Microsoft.PowerOptions /page pageGlobalSettings
	Else If ComboBox = - Power Options (Create a Power Plan)
	Run, control /name Microsoft.PowerOptions /page pageCreateNewPlan
	Else If ComboBox = Printers and Faxes
	Run, control /name Microsoft.Printers and Faxes
	Else If ComboBox = Problem Reports and Solutions
	Run, control /name Microsoft.ProblemReportsAndSolutions
	Else If ComboBox = Programs and Features
	Run, control Microsoft.ProgramsAndFeatures
	Else If ComboBox = RealTek HD Audio Manager (if available)
	Run, %A_WinDir%\System32\RTSndMgr.cpl
	Else If ComboBox = Region and Language
	Run, control /name Microsoft.RegionAndLanguage
	Else If ComboBox = - Region and Language (Location)
	Run, control.exe /name Microsoft.RegionalAndLanguageOptions /page /p:"location"
	Else If ComboBox = - Region and Language (Keyboards and Languages)
	Run, control.exe /name Microsoft.RegionalAndLanguageOptions /page /p:"keyboard"
	Else If ComboBox = - Region and Language (Administrative)
	Run, control.exe /name Microsoft.RegionalAndLanguageOptions /page /p:"administrative"
	Else If ComboBox = RemoteApp and Desktop Connections
	Run, control /name Microsoft.RemoteAppAndDesktopConnections
	Else If ComboBox = Scanners and Cameras
	Run, control /name Microsoft.ScannersAndCameras
	Else If ComboBox = Scheduled Tasks
	Run, control schedtasks
	Else If ComboBox = Screen Resolution
	Run, control.exe desk.cpl,Settings,@Settings
	Else If ComboBox = Sound
	Run, control /name Microsoft.Sound
	Else If ComboBox = Sounds and Audio Devices
	Run, control /name Microsoft.SoundProgress, m2 b zh0, Text here
	Else If ComboBox = Speech Recognition Options
	Run, control /name Microsoft.SpeechRecognitionOptions
	Else If ComboBox = Speech Recognition
	Run, control /name Microsoft.SpeechRecognition
	Else If ComboBox = Sync Center
	Run, control /name Microsoft.SyncCenter
	Else If ComboBox = System
	Run, control /name Microsoft.System
	Else If ComboBox = - System Properties (Advanced)
	Run, SystemPropertiesAdvanced.exe
	Else If ComboBox = - System Properties (Computer Name)
	Run, SystemPropertiesComputerName.exe
	Else If ComboBox = - System Properties (Data Execution Prevention)
	Run, SystemPropertiesDataExecutionPrevention.exe
	Else If ComboBox = - System Properties (Hardware)
	Run, SystemPropertiesHardware.exe
	Else If ComboBox = - System Properties (Performance)
	Run, SystemPropertiesPerformance.exe
	Else If ComboBox = - System Properties (Remote Access)
	Run, SystemPropertiesRemote.exe
	Else If ComboBox = - System Properties (System Protection)
	Run, SystemPropertiesProtection.exe
	Else If ComboBox = Tablet PC Settings (if available)
	Run, control /name Microsoft.TabletPCSettings
	Else If ComboBox = Taskbar and Start Menu
	Run, control /name Microsoft.TaskbarAndStartMenu
	Else If ComboBox = Text to Speech
	Run, control /name Microsoft.TextToSpeech
	Else If ComboBox = Troubleshooting
	Run, control /name Microsoft.Troubleshooting
	Else If ComboBox = User Accounts
	Run, control /name Microsoft.UserAccounts
	Else If ComboBox = Welcome Center
	Run, control /name Microsoft.WelcomeCenter
	Else If ComboBox = Windows Anytime Upgrade
	Run, control /name Microsoft.WindowsAnytimeUpgrade
	Else If ComboBox = Windows CardSpace
	Run, control /name Microsoft.CardSpace
	Else If ComboBox = Windows Defender
	Run, control /name Microsoft.WindowsDefender
	Else If ComboBox = Windows Firewall
	Run, control /name Microsoft.WindowsFirewall
	Else If ComboBox = Windows Marketplace
	Run, control /name Microsoft.GetProgramsOnline
	Else If ComboBox = Windows Master Control Panel (All Tasks)
	Run, explorer.exe shell:::{ED7BA470-8E54-465E-825C-99712043E01C} ; Suggested by TheDewd - thanks!
	Else If ComboBox = Windows Mobility Center
	Run, control /name Microsoft.MobilityCenter
	Else If ComboBox = Windows Optional Features
	Run, OptionalFeatures.exe
	Else If ComboBox = Windows Sidebar Properties
	Run, control /name Microsoft.WindowsSidebarProperties
	Else If ComboBox = Windows SideShow
	Run, control /name Microsoft.WindowsSideShow
	Else If ComboBox = Windows Update
	Run, control /name Microsoft.WindowsUpdate
	Else If ComboBox = - Windows Update (Change Settings)
	Run, control /name Microsoft.WindowsUpdate /page pageSettings
	return
}

{ ; Script for getting installed programs
	insw:
	fileappend,HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall`n`t~~~~~~~~~~`n`n,installed software.txt
		Loop, HKLM, SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall, 1, 1
		{
		 if a_loopregname = DisplayName
		 {
		 regread,regvalue
		 fileappend, %A_LoopRegSubKey%`nDisplayName = %RegValue%`n`n, installed software.txt
		}
	 }
	return
}

GuiClose:
GuiEscape:
Quitter:
ExitApp
return