; Panel - The Missing GUI for Windows
; https://github.com/joonikko/panel

#SingleInstance force
#NoEnv

SendMode Input
SetWorkingDir %A_ScriptDir%
SetWinDelay,2
ws_MinHeight = 25
CoordMode,Mouse
OnExit, GuiClose

Gui,Show, w560 h290, Panel
Gui,Add,Tab3,x0 y0 w590 h290 vTabName,Main|Install|System Information|Hotkeys|Run

{ ; GUI MAIN TAB
	Gui,Tab, Main
	Gui,Add,Button,x10 y35 w40 h30,		CMD
	Gui,Add,Button,x+0.5 yp h30,		PS
	Gui,Add,Button,x+0.5 yp h30,		Control
	Gui,Add,Button,x+0.5 yp h30 		gShowCPUGraph, CPU Graph

	Gui,Add,Button,x10 y+2 h30,			Task Manager
	Gui,Add,Button,x+0.5 yp h30,		msconfig
	Gui,Add,Button,x+0.5 yp h30 w37,	Edge
	Gui,Add,Button,x+0.5 yp h30 w37,	IE

	Gui,Add,Button,x290 y35 w80 h35,	Log Out
	Gui,Add,Button,x+1 y35 w100 h35,	Reboot
	Gui,Add,Button,x+1 y35 w80 h35,		Shut Down

	Gui,Add,Button,x290 y+4 w40 h30,	Mute
	Gui,Add,Button,x+0.5 yp w40 h30,	Vol 30
	Gui,Add,Button,x+0.5 yp w45 h30,	Vol 100
	Gui,Add,Button,x+2 yp w63 h30 		gMainNotepad, Notepad
	Gui,Add,Button,x+0.5 yp w70 h30 	gMainWordpad, Wordpad

	Gui,Add,Text,x10 y105 w70 h20,      Control Panel

	Gui,Add,Button,x10 y+1 w40 h30,    	Time
	Gui,Add,Button,x+0.5 yp w60 h30,	Network
	Gui,Add,Button,x+0.5 yp w60 h30,	Update
	Gui,Add,Button,x+0.5 yp w60 h30,	Language

	Gui,Add,Button,x10 y+1 w60 h30,		System
	Gui,Add,Button,x+0.5 yp w50 h30,	Display
	Gui,Add,Button,x+0.5 yp w70 h30,	Power Plan
	Gui,Add,Button,x+0.5 yp w50 h30,	Desktop

	Gui,Add,Button,x10 y+1 w90 h30,		Internet Settings
	Gui,Add,Button,x+0.5 yp w100 h30,	Device Manager
	Gui,Add,Button,x+0.5 yp w60 h30,	Devices

	Gui,Add,Button,x10 y+1 w60 h30,		Programs
	Gui,Add,Button,x+0.5 yp w100 h30,	Default Programs
	Gui,Add,Button,x+0.5 yp w50 h30,	Sound

	Gui,Add,Button,x10 y+1 w90 h30,		User Accounts
	Gui,Add,Button,x+0.5 yp w50 h30,	Hosts
	Gui,Add,Button,x+0.5 yp w70 h30,	Host Folder

	; Folders
	Gui,Add,Button,x290 y160 w40 h30,	PC
	Gui,Add,Button,x+0.5 y160 w40 h30,	C:\
	Gui,Add,Button,x+0.5 y160 w40 h30,	Prog
	Gui,Add,Button,x+0.5 y160 w70 h30,	User Folder
	Gui,Add,Button,x+0.5 y160 w60 h30,	AppData
	Gui,Add,Button,x290 y190 w100 h30,	Program Files x86
	Gui,Add,Button,x+0.5 y190 w100 h30,	Program Files x64
	Gui,Add,Button,x290 y220 w50 h30,	Start
	Gui,Add,Button,x+0.5 y220 w70 h30,	User Start
	Gui,Add,Button,x+0.5 y220 w120 h30 	gINSW, List installed software

	Gui,Add,Checkbox,x295 y130  gAlwaysOnTop vAlwaysOnTopVar, Always on Top
	Gui,Add,Checkbox,x+10 y130 gPreventSleep vPreventSleepVar, Prevent Sleep
	Gui, Add, Button, x495 y259 w30 h23, OK
	Gui, Add, ComboBox, x290 y260 w200 vComboBox, Action Center|- Action Center (Problem Reporting settings)|Add or Remove Programs|Administrative Tools|Automatic Updates|AutoPlay|Backup and Restore|Biometric Devices (if available)|BitLocker Drive Encryption (if available)|Bluetooth Devices (if available)|Color Management|Credential Manager|CSNW (Client Service for NetWare)|Date and Time|Default Programs|Desktop Gadgets|Device Manager|Devices and Printers|Display|Ease of Access Center|File Associations|Folder Options|Flash Player Settings Manager|Fonts|Game Controllers|Get Programs|Getting Started|HomeGroup|Indexing Options|Infrared (if available)|Intel Graphics (if available)|Internet Options|iSCSI Initiator|Java 7|Keyboard|Location and Other Sensors|Mail Setup (Outlook) (if available)|Mouse|Network and Sharing Center|Network Connections|Network Setup Wizard|Notification Area Icons|Offline Files|Parental Controls|Pen and Input Devices (if available)|Pen and Touch Settings|People Near Me|Performance Information and Tools|Performance Options|Personalization|- Personalization (Desktop Background)|- Personalization (Window Color and Appearance)|Phone and Modem|Power Options|- Power Options (Edit Plan settings)|- Power Options (System settings)|- Power Options (Create a Power Plan)|Printers and Faxes|Problem Reports and Solutions|Programs and Features|RealTek HD Audio Manager (if available)|Region and Language|- Region and Language (Location)|- Region and Language (Keyboards and Languages)|- Region and Language (Administrative)|RemoteApp and Desktop Connections|Scanners and Cameras|Scheduled Tasks|Screen Resolution|Sound|Sounds and Audio Devices|Speech Recognition Options|Speech Recognition|Sync Center|System|- System Properties (Advanced)|- System Properties (Computer Name)|- System Properties (Data Execution Prevention)|- System Properties (Hardware)|- System Properties (Performance)|- System Properties (Remote Access)|- System Properties (System Protection)|Tablet PC Settings (if available)|Taskbar and Start Menu|Text to Speech|Troubleshooting|User Accounts|Welcome Center|Windows Anytime Upgrade|Windows CardSpace|Windows Defender|Windows Firewall|Windows Marketplace|Windows Master Control Panel (All Tasks)|Windows Mobility Center|Windows Optional Features|Windows Sidebar Properties|Windows SideShow|Windows Update|- Windows Update (Change Settings)

}

{ ; GUI INSTALLATION TAB
	Gui,Tab, Install
	; COL 1
	Gui,Add,Checkbox,x10 y30 w90 h20  		vInstallChrome,      		GoogleChrome
	Gui,Add,Checkbox,x10 y+0.5 w50 h20  	vInstallOpera,       		Opera
	Gui,Add,Checkbox,x10 y+0.5 w60 h20  	vInstallFirefox,     		Firefox
	Gui,Add,Checkbox,x10 y+10 w50 h20  		vInstall7zip,        		7-Zip
	Gui,Add,Checkbox,x10 y+0.5 w60 h20  	vInstallSkype,       		Skype
	Gui,Add,Checkbox,x10 y+0.5 w70 h20 		vInstallCCleaner,    		CCleaner
	Gui,Add,Checkbox,x10 y+0.5 w50 h20 		vInstallJava,        		Java
	Gui,Add,Checkbox,x10 y+0.5 w50 h20 		vInstallFlash,       		Flash
	Gui,Add,Checkbox,x10 y+0.5 w70 h20 		vInstallSilverlight,   		Silverlight
	Gui,Add,Checkbox,x10 y+0.5 w90 h20 		vInstallImDiskToolkit,   	ImDisk Toolkit
	Gui,Add,Checkbox,x10 y+0.5 w80 h20  	vInstallQuicklook,    		Quicklook
	; COL 2
	Gui,Add,Checkbox,x120 y30 w70 h20   	vInstallLibreOffice,   		LibreOffice
	Gui,Add,Checkbox,x120 y+0.5 w90 h20   	vInstallAdobeReader,   		AdobeReader
	Gui,Add,Checkbox,x120 y+0.5 w80 h20   	vInstallThunderbird,   		Thunderbird
	Gui,Add,Checkbox,x120 y+0.5 w80 h20   	vInstallSumatraPDF,    		SumatraPDF
	Gui,Add,Checkbox,x120 y+10 w60 h20  	vInstallSpotify,     		Spotify
	Gui,Add,Checkbox,x120 y+0.5 w80 h20  	vInstallFoobar,      		Foobar2000
	Gui,Add,Checkbox,x120 y+0.5 w50 h20  	vInstallVLC,       			VLC
	Gui,Add,Checkbox,x120 y+0.5 w70 h20  	vInstallKLite,       		K-Lite Full
	Gui,Add,Checkbox,x120 y+0.5 w70 h20  	vInstallQuicktime,     		QuickTime
	Gui,Add,Checkbox,x120 y+0.5 w60 h20  	vInstalliTunes,      		iTunes
	Gui,Add,Checkbox,x120 y+0.5 w80 h20  	vInstallNaps2,       		Naps2
	;COL 3
	Gui,Add,Checkbox,x230 y30 w70 h20   	vInstallDropbox,     		Dropbox
	Gui,Add,Checkbox,x230 y+0.5 w90 h20   	vInstallGoogleDrive,   		Google Drive
	Gui,Add,Checkbox,x230 y+0.5 w70 h20   	vInstallOneDrive,      		OneDrive
	Gui,Add,Checkbox,x230 y+10 w50 h20  	vInstallGIMP,        		GIMP
	Gui,Add,Checkbox,x230 y+0.5 w70 h20  	vInstallIrfanview,   		IfranView
	Gui,Add,Checkbox,x230 y+0.5 w70 h20		vInstallPaint,       		Paint.NET
	Gui,Add,Checkbox,x230 y+0.5 w70 h20  	vInstallInkscape,      		Inkscape
	Gui,Add,Checkbox,x230 y+0.5 w90 h20  	vInstallImageglass,      	ImageGlass
	Gui,Add,Checkbox,x230 y+0.5 w90 h20  	vInstallMalwarebytes,    	Malwarebytes
	Gui,Add,Checkbox,x230 y+0.5 w100 h20  	vInstallRevoUninstaller, 	Revo Unins.
	Gui,Add,Checkbox,x230 y+0.5 w100 h20  	vInstallTreeSizeFree, 		TreeSizeFree
	; COL 4
	Gui,Add,Checkbox,x330 y30 w80 h20   	vInstallNotepadplusplus, 	Notepad++
	Gui,Add,Checkbox,x330 y+0.5 w100 h20  	vInstallVisualStudioCode,	VS Code
	Gui,Add,Checkbox,x330 y+0.5 w100 h20  	vInstallProcessExplorer, 	Process Explorer
	Gui,Add,Checkbox,x330 y+0.5 w70 h20   	vInstallFileZilla,     		FileZilla
	Gui,Add,Checkbox,x330 y+0.5 w70 h20  	vInstallPutty,       		Putty

	Gui,Add,Checkbox,x330 y160 w70 h20  	vInstallRedistAll,     		All
	Gui,Add,Checkbox,x330 y+0.5 w70 h20  	vInstallVC2008,      		2008
	Gui,Add,Checkbox,x330 y+0.5 w70 h20  	vInstallVC2010,      		2010
	Gui,Add,Checkbox,x330 y+0.5 w70 h20  	vInstallVC2012,      		2012
	Gui,Add,Checkbox,x330 y+0.5 w70 h20  	vInstallVC2013,      		2013
	Gui,Add,Checkbox,x330 y+0.5 w70 h20  	vInstallVC2015,      		2015

	Gui,Add,Checkbox,x400 y160 w70 h20  	vInstallDotnetAll,     		All
	Gui,Add,Checkbox,x400 y+0.5 w70 h20  	vInstallDotnet35,      		3.5
	Gui,Add,Checkbox,x400 y+0.5 w70 h20  	vInstallDotnet40,      		4.0
	Gui,Add,Checkbox,x400 y+0.5 w70 h20  	vInstallDotnet45,      		4.5
	Gui,Add,Checkbox,x400 y+0.5 w70 h20  	vInstallDotnet46,      		4.6
	Gui,Add,Checkbox,x400 y+0.5 w70 h20  	vInstallDotnet461,     		4.6.1
	; COL 5
	Gui,Add,Checkbox,x470 y30 w80 h20   	vClassicShell,    			Classic Shell
	Gui,Add,Checkbox,x470 y50 w105 h20  	vClassicShellStart, 		Classic Start

	Gui,Add,Text,x330 y145 w70 h15,   		VC Redist
	Gui,Add,Text,x400 y145 w60 h15,   		.NET

	Gui,Add,Button,x470 y80 w80 h30   		gChocoInstall1,   			Install choco
	; Gui,Add,Button,x470 y+1 w80 h27  		gInstallChoco2,   			PS Install
	Gui,Add,Button,x470 y+10 w80 h27  		gChocoDefaults,    			Defaults
	Gui,Add,Button,x470 y+1 w80 h27  		gChocoClear,    			Clear
	Gui,Add,Button,x470 y+1 w80 h27			gChocoList,					List installed
	Gui,Add,Button,x470 y+1 w80 h27  		gChocoUpdate,   			Update All
	Gui,Add,Button,x470 y+10 w80 h35,           						Install


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
		VersionNumber = 1507. July 29, 2015. Not supported by MS Anymore
		}
	if (BuildNum = 10586){
		VersionNumber = 1511 November Update. November 10, 2015 . Not supported by MS Anymore. Please update.
		}
	if (BuildNum = 14393){
		VersionNumber = 1607 Anniversary Update. August 2, 2016. Not supported by MS Anymore. Please update.
		}
	if (BuildNum = 15063){
		VersionNumber = 1703 Creators Update. April 5, 2017. Not supported by MS Anymore. Please update.
		}
	if (BuildNum = 16299){
		VersionNumber = 1709 Fall Creators Update. October 17, 2017. Not supported by MS Anymore. Please update.
		}
	if (BuildNum = 17134){
		VersionNumber = 1803 April 2018 Update. April 30, 2018. Not supported by MS Anymore. Please update.
		}
	if (BuildNum = 17763){
		VersionNumber = 1809 October 2018 Update
		}
	if (BuildNum = 18362){
		VersionNumber = 1903 May 2019 Update
		}
	if (BuildNum = 18363){
		VersionNumber = 1909 November 2019 Update
		}
	if (BuildNum > 18363){
		VersionNumber = >18363 Newer than November 2019 update
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
							. "Build Number: `t" BuildNum . "  -  " . VersionNumber "`n"
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
	Gui, Add, Text, x450 y40, Panel v1.07
}

{ ; GUI HOTKEYS TAB
	Gui, Tab, Hotkeys

	Gui, Font, Bold
	Gui, Add, Text, x10 y30, Global hotkeys
	Gui, Font, Norm
	Gui, Add, Text, xm y+4, Alt+<  -  WindowShade
	Gui, Add, Text, xm y+4, Alt+§  -  Switch windows
	Gui, Add, Text, xm y+4, Alt+L/R Mouse  -  Alt-drag
	Gui, Add, Text, xm y+4, Ctrl+Q  -  Send Alt-F4

	Gui, Font, Bold
	Gui, Add, Text, x170 y30, Explorer
	Gui, Font, Norm
	Gui, Add, Text, xp y+4, F1     -  Up directory
	Gui, Add, Text, xp y+4, Alt+1  -  large icons
	Gui, Add, Text, xp y+4, Alt+2  -  List
	Gui, Add, Text, xp y+4, Alt+3  -  Details
	Gui, Add, Text, xp y+4, Alt+4  -  Tiles
	Gui, Add, Text, xp y+4, Alt+Q  -  Medium icons
	Gui, Add, Text, xp y+4, Alt+W  -  Small icons
	Gui, Add, Text, xp y+4, Alt+E  -  Content
	Gui, Add, Text, xp y+4, Alt+A  -  Extra large icons
	Gui, Add, Text, xp y+4, Alt+N  -  Show/Hide sidebar

	Gui, Font, Bold
	Gui, Add, Text, x350 y30, Panel
	Gui, Font, Norm
	Gui, Add, Text, xp y+4, F1  -  Cmd.exe
	Gui, Add, Text, xp y+4, F2  -  Run -prompt
	Gui, Add, Text, xp y+4, F5  -  Reload
	Gui, Add, Text, xp y+4, F6  -  Reload as admin
	Gui, Add, Text, xp y+4, F7  -  WUMT
	Gui, Add, Text, xp y+4, F8  -  CCleaner
	Gui, Add, Text, xp y+4, F9  -  Windows Update
	Gui, Add, Text, xp y+4, F11  - Show CPU usage graph
	Gui, Add, Text, xp y+4, F12  - Show folders GUI
	Gui, Add, Text, xp y+4, Alt+Q  -  UAC Settings
	Gui, Add, Text, xp y+4, Alt+W  -  Control panel
	Gui, Add, Text, xp y+4, Alt+D  -  Task Manager
	Gui, Add, Text, xp y+4, Alt+F1  -  Turn screen off
}


{ ; GUI RUN TAB
	Gui,Tab, Run
	Gui,Add,Checkbox,x10 y30 w70 h20	vRunChrome, Chrome
	Gui,Add,Checkbox,x10 y+0.5 w70 h20	vRunFirefox, Firefox
	Gui,Add,Checkbox,x10 y+0.5 w70 h20	vRunOpera, Opera
	Gui,Add,Checkbox,x10 y+0.5 w70 h20	vRunEdge, Edge
	Gui,Add,Checkbox,x10 y+0.5 w70 h20	vRunIE, IE

	Gui,Add,Checkbox,x10 y+10 w70 h20	vRunAcrobat, Acrobat
	Gui,Add,Checkbox,x10 y+0.5 w70 h20	vRunWordpad, Wordpad
	Gui,Add,Checkbox,x10 y+0.5 w70 h20	vRunNotepad, Notepad
	Gui,Add,Checkbox,x10 y+0.5 w70 h20	vRunNotepadpp, Notepad++
	Gui,Add,Checkbox,x10 y+0.5 w70 h20	vRunVLC, VLC
	Gui,Add,Checkbox,x10 y+0.5 w70 h20	vRun7zip, 7-Zip

	Gui,Add,Checkbox, x100 y30 w70 h20 	vRunWord, Word
	Gui,Add,Checkbox,x100 y+0.5 w70 h20	vRunExcel, Excel
	Gui,Add,Checkbox,x100 y+0.5 w70 h20	vRunPowerPoint, PowerPoint
	Gui,Add,Checkbox,x100 y+0.5 w70 h20	vRunOutlook, Outlook

	Gui,Add,Checkbox,x100 y+30 w70 h20	vRunLibreOffice, LibreOffice
	Gui,Add,Checkbox,x100 y+0.5 w70 h20	vRunSpotify, Spotify

	Gui,Add,Checkbox,x100 y+10 w90 h20	vRunMsconfig, msconfig
	Gui,Add,Checkbox,x100 y+0.5 w90 h20	vRunTaskManager, Task Manager

	Gui,Add,Checkbox,x100 y+10 w150 h20	vRunLoadTabs, Load browser tabs

	Gui,Add,Button, x450 y40 h30 w100 	gRunDefaults, Defaults
	Gui,Add,Button, x450 y+2 h30 w100 	gRunOffice, Office
	Gui,Add,Button, x450 y+2 h30 w100 	gRunBench, Bench
	Gui,Add,Button, x450 y+2 h30 w100 	gRunClear, Clear
	Gui,Add,Button, x450 y+30 h45 w100 	gRunSelected, Run

}

return

{ ; WindowShade
	!SC056::
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

{ ; BUTTON COMMANDS - Main

	ButtonCMD:
		Run *runas cmd
	return

	ButtonPS:
		Run *runas powershell.exe
	return

	ButtonControl:
		Run control
	return

	ButtonTaskManager:
		Run taskmgr.exe
	return

	Buttonmsconfig:
		run msconfig
	return

	ButtonIE:
	If GetKeyState("SHIFT","P")
		Run, iexplore.exe -private
	else If GetKeyState("CTRL","P")
		Run chrome.exe -incognito
	else
		run, iexplore.exe
	return

	ButtonEdge:
	If GetKeyState("SHIFT","P")
		Run, cmd.exe /c start shell:AppsFolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge -private
	else If GetKeyState("CTRL","P")
		Run chrome.exe
	else
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
		If GetKeyState("SHIFT","P")
			Run *runas %comspec% /k shutdown -l
		else
			MsgBox, 1,Log out, Are you sure you want to log out?
			IfMsgBox OK
				Run *runas %comspec% /k shutdown -l
			else IfMsgBox Cancel
				return
	return

	ButtonReboot:
		If GetKeyState("SHIFT","P")
			Run *runas %comspec% /k shutdown -t 0 -r
		else
			MsgBox, 1,Reboot, Are you sure you want to Reboot?
			IfMsgBox OK
				Run *runas %comspec% /k shutdown -t 0 -r
			else IfMsgBox Cancel
				return
	return

	ButtonShutDown:
	If GetKeyState("SHIFT","P")
		Run *runas %comspec% /k shutdown -t 0 -s
	else
		MsgBox, 1,Shutdown, Are you sure you want to shutdown?
		IfMsgBox OK
			Run *runas %comspec% /k shutdown -t 0 -s
		else IfMsgBox Cancel
			return
	return

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
		Run *runas notepad.exe C:\WINDOWS\System32\drivers\etc\hosts
	return

	ButtonHostFolder:
		Run C:\Windows\System32\drivers\etc
	return

	ButtonPC:
		Run, "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
	return

	ButtonC:\:
		run, C:\
	return

	ButtonProg:
		Run, C:\ProgramData
	return

	ButtonUserFolder:
		Run, C:\Users\%A_UserName%
	return

	ButtonAppData:
		Run, C:\Users\%A_UserName%\AppData
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
		Run, C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu
	return
}

{ ; BUTTON COMMANDS - install
	ButtonInstall:
	Gui, Submit, NoHide
	myListOfPrograms := "choco install "

	If InstallChrome = 1
	myListOfPrograms .= " googlechrome"

	If InstallLibreOffice = 1
	myListOfPrograms .= " libreoffice-fresh"

	If InstallDropbox = 1
	myListOfPrograms .= " dropbox"

	If InstallRevoUninstaller = 1
	myListOfPrograms .= " revo.uninstaller"

	If InstallTreeSizeFree = 1
	myListOfPrograms .= " treesizefree"

	If InstallClassicShell = 1
	myListOfPrograms .= " classic-shell"

	If InstallClassicShellStart = 1
	myListOfPrograms .= " classic-shell -installArgs ADDLOCAL=ClassicStartMenu"

	If InstallOpera = 1
	myListOfPrograms .= " opera"

	If InstallAdobeReader = 1
	myListOfPrograms .= " adobereader"

	If InstallSumatraPDF = 1
	myListOfPrograms .= " sumatrapdf.install"

	If InstallGoogleDrive = 1
	myListOfPrograms .= " googledrive"

	If Installnotepadplusplus = 1
	myListOfPrograms .= " notepadplusplus.install"

	If InstallVisualStudioCode = 1
	myListOfPrograms .= " visualstudiocode"

	If InstallFirefox = 1
	myListOfPrograms .= " firefox"

	If InstallThunderbird = 1
	myListOfPrograms .= " thunderbird"

	If InstallOneDrive = 1
	myListOfPrograms .= " onedrive"

	If InstallProcessExplorer = 1
	myListOfPrograms .= " procexp"

	If Installfilezilla = 1
	myListOfPrograms .= " filezilla"

	If Install7zip = 1
	myListOfPrograms .= " 7zip.install"

	If Installputty = 1
	myListOfPrograms .= " putty"

	If Installskype = 1
	myListOfPrograms .= " skype"

	If Installspotify = 1
	myListOfPrograms .= " spotify"

	If Installccleaner = 1
	myListOfPrograms .= " ccleaner"

	If Installfoobar = 1
	myListOfPrograms .= " foobar2000"

	If Installirfanview = 1
	myListOfPrograms .= " irfanview irfanviewplugins"

	If Installvlc = 1
	myListOfPrograms .= " vlc"

	If Installjava = 1
	myListOfPrograms .= " javaruntime"

	If Installpaint = 1
	myListOfPrograms .= " paint.net"

	If Installklite = 1
	myListOfPrograms .= " k-litecodecpackfull"

	If Installflash = 1
	myListOfPrograms .= " flashplayerplugin flashplayeractivex"

	If Installinkscape = 1
	myListOfPrograms .= " inkscape"

	If Installimageglass = 1
	myListOfPrograms .= " imageglass"

	If Installquicktime = 1
	myListOfPrograms .= " quicktime"

	If Installsilverlight = 1
	myListOfPrograms .= " silverlight"

	If Installimdisk = 1
	myListOfPrograms .= " imdisk"

	If Installimdisktoolkit = 1
	myListOfPrograms .= " imdisk-toolkit"

	If Installitunes = 1
	myListOfPrograms .= " itunes"

	If Installmalwarebytes = 1
	myListOfPrograms .= " malwarebytes"

	If InstallNaps2 = 1
	myListOfPrograms .= " naps2"

	If InstallQuicklook = 1
	myListOfPrograms .= " quicklook"

	If Installvc2008 = 1
	myListOfPrograms .= " vcredist2008"

	If Installvc2010 = 1
	myListOfPrograms .= " vcredist2010"

	If Installvc2012 = 1
	myListOfPrograms .= " vcredist2012"

	If Installvc2013 = 1
	myListOfPrograms .= " vcredist2013"

	If Installvc2015 = 1
	myListOfPrograms .= " vcredist2015"

	If Installdotnet35 = 1
	myListOfPrograms .= " dotnet3.5"

	If Installdotnet40 = 1
	myListOfPrograms .= " dotnet4.0"

	If Installdotnet45 = 1
	myListOfPrograms .= " dotnet4.5"

	If Installdotnet46 = 1
	myListOfPrograms .= " dotnet4.6"

	If Installdotnet461 = 1
	myListOfPrograms .= " dotnet4.6.1"

	If InstalldotnetAll = 1
	myListOfPrograms .= " dotnet3.5 dotnet4.0 dotnet4.5 dotnet4.6 dotnet4.6.1 dotnet4.7"

	If InstallredistAll = 1
	myListOfPrograms .= " vcredist2008 vcredist2010 vcredist2012 vcredist2013 vcredist2015 vcredist2017"

	Run *runas %comspec% /k %myListOfPrograms% -y
	return

	chocoDefaults:
		; Run *runas %comspec% /k choco install 7zip vlc adobereader googlechrome -y
		GuiControl,, InstallChrome, 1
		GuiControl,, Install7zip, 1
		GuiControl,, Installadobereader, 1
		GuiControl,, InstallRedistALL, 1
		GuiControl,, InstallDotnetALL, 1
	return

	ChocoInstall1:
		Run *runas %comspec% /k @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
	return

	ChocoInstall2:
		Run *runas powershell.exe iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
	return

	ChocoUpdate:
		Run *runas %comspec% /k cup all -y
	return

	ChocoList:
		Run *runas %comspec% /k choco list --local-only
	return

	ChocoClear:
		GuiControl,,InstallChrome, 0
		GuiControl,,InstallOpera, 0
		GuiControl,,InstallFirefox, 0
		GuiControl,,Install7zip, 0
		GuiControl,,InstallSkype, 0
		GuiControl,,InstallCCleaner, 0
		GuiControl,,InstallJava, 0
		GuiControl,,InstallFlash, 0
		GuiControl,,InstallSilverlight, 0
		GuiControl,,InstallImDiskToolkit, 0
		GuiControl,,InstallQuicklook, 0
		GuiControl,,InstallLibreOffice, 0
		GuiControl,,InstallAdobeReader, 0
		GuiControl,,InstallThunderbird, 0
		GuiControl,,InstallSumatraPDF, 0
		GuiControl,,InstallSpotify, 0
		GuiControl,,InstallFoobar, 0
		GuiControl,,InstallVLC, 0
		GuiControl,,InstallKLite, 0
		GuiControl,,InstallQuicktime, 0
		GuiControl,,InstalliTunes, 0
		GuiControl,,InstallNaps2, 0
		GuiControl,,InstallDropbox, 0
		GuiControl,,InstallGoogleDrive, 0
		GuiControl,,InstallOneDrive, 0
		GuiControl,,InstallGIMP, 0
		GuiControl,,InstallIrfanview, 0
		GuiControl,,InstallPaint, 0
		GuiControl,,InstallInkscape, 0
		GuiControl,,InstallImageglass, 0
		GuiControl,,InstallMalwarebytes, 0
		GuiControl,,InstallRevoUninstaller, 0
		GuiControl,,InstallTreeSizeFree, 0
		GuiControl,,InstallNotepadplusplus, 0
		GuiControl,,InstallVisualStudioCode, 0
		GuiControl,,InstallProcessExplorer, 0
		GuiControl,,InstallFileZilla, 0
		GuiControl,,InstallPutty, 0
		GuiControl,,InstallRedistALL, 0
		GuiControl,,InstallVC2008, 0
		GuiControl,,InstallVC2010, 0
		GuiControl,,InstallVC2012, 0
		GuiControl,,InstallVC2013, 0
		GuiControl,,InstallVC2015, 0
		GuiControl,,InstallDotnetALL, 0
		GuiControl,,InstallDotnet35, 0
		GuiControl,,InstallDotnet40, 0
		GuiControl,,InstallDotnet45, 0
		GuiControl,,InstallDotnet46, 0
		GuiControl,,InstallDotnet461, 0
		GuiControl,,InstallClassicShell, 0
		GuiControl,,InstallClassicShellStart, 0
	return
}

{ ; BUTTON COMMANDS - Run
	RunSelected:
		Gui, Submit, NoHide

		if RunChrome = 1
		Run, Chrome.exe

		if RunFirefox = 1
		Run, firefox.exe

		if RunOpera = 1
		Run, opera.exe

		if RunEdge = 1
		Run, microsoft-edge:

		if RunIE = 1
		Run, iexplore.exe

		if RunAcrobat = 1
		Run, AcroRd32.exe

		if RunWordpad = 1
		Run, wordpad.exe

		if RunNotepad = 1
		Run, notepad.exe

		if RunNotepadpp = 1
		Run, notepad++.exe

		if RunVLC = 1
		Run, vlc.exe

		if Run7zip = 1
		Run, 7zFM.exe

		if RunWord = 1
		Run, WINWORD.EXE

		if RunExcel = 1
		Run, EXCEL.exe

		if RunPowerPoint = 1
		Run, POWERPNT.exe

		if RunOutlook = 1
		Run, outlook.exe

		if RunLibreOffice = 1
		Run, soffice.exe

		if RunSpotify = 1
		Run, C:\Users\%A_UserName%\AppData\Roaming\Spotify\Spotify.exe

		if RunMsconfig = 1
		Run, msconfig

		if RunTaskManager = 1
		Run, taskmgr.exe

		if RunLoadTabs = 1
		Run, Chrome.exe "fast.com" "http://ilmatieteenlaitos.fi/" "https://www.google.fi/" "http://yle.fi/uutiset" "https://yle.fi/" "https://areena.yle.fi/tv" "https://github.com/" "euronics.fi" "https://www.f-secure.com/fi_FI/web/home_fi/home"

	return


	RunDefaults:
		GuiControl,, RunChrome, 1
		GuiControl,, RunEdge, 1
		GuiControl,, RunIE, 1
		GuiControl,, RunAcrobat, 1
		GuiControl,, Run7zip, 1
	return

	RunOffice:
		GuiControl,, RunWord, 1
		GuiControl,, RunExcel, 1
		GuiControl,, RunPowerPoint, 1
		GuiControl,, Outlook, 1
	return

	RunBench:
		GuiControl,, RunChrome, 1
		GuiControl,, RunEdge, 1
		GuiControl,, RunIE, 1
		GuiControl,, RunAcrobat, 1
		GuiControl,, RunWordpad, 1
		GuiControl,, RunNotepad, 1
		GuiControl,, Run7zip, 1
		GuiControl,, RunLoadTabs, 1
	return

	RunClear:
		GuiControl,, RunChrome, 0
		GuiControl,, RunFirefox, 0
		GuiControl,, RunOpera, 0
		GuiControl,, RunEdge, 0
		GuiControl,, RunIE, 0
		GuiControl,, RunAcrobat, 0
		GuiControl,, RunWordpad, 0
		GuiControl,, RunNotepad, 0
		GuiControl,, RunNotepadpp, 0
		GuiControl,, RunVLC, 0
		GuiControl,, Run7zip, 0
		GuiControl,, RunWord, 0
		GuiControl,, RunExcel, 0
		GuiControl,, RunPowerPoint, 0
		GuiControl,, RunLibreOffice, 0
		GuiControl,, RunOutlook, 0
		GuiControl,, RunSpotify, 0
		GuiControl,, Runmsconfig, 0
		GuiControl,, RunTaskManager, 0
		GuiControl,, RunLoadTabs, 0
	return

}

{ ; BUTTON COMMANDS - GUI 2 Folders

	2ButtonPC:
		Run explorer.exe
	return

	2ButtonC:\:
		run C:\
	return

	2ButtonD:\:
		run D:\
	return

	2ButtonProg:
		Run, C:\ProgramData
	return

	2ButtonUser:
		Run, C:\Users\%A_UserName%
	return

	2ButtonDownloads:
		Run, C:\Users\%A_UserName%\Downloads
	return

	2ButtonDocuments:
		Run, C:\Users\%A_UserName%\Documents
	return

	2ButtonDesktop:
		Run, C:\Users\%A_UserName%\Desktop
	return

	2ButtonAppData:
		Run, C:\Users\%A_UserName%\AppData
	return

	2ButtonProgramFilesx86:
		Run, C:\Program Files (x86)
	return

	2ButtonProgramFiles:
		run, C:\Program Files
	return
}

{ ; MAIN TAB checkbox functionality
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

	PreventSleep:
	GuiControlGet, Checked,, PreventSleepVar

	If Checked = 0
	SetTimer, CheckIdle, off

	If Checked = 1
	SetTimer, CheckIdle, 600    ; 60 sec / 1 min
	return

	CheckIdle:
		If ( A_TimeIdle > 5999 ) {
		Send {RShift}
		}
	Return

}

{ ; HOTKEYS - Global and Application Specific
	^!a::Winset, Alwaysontop, , A
	^q::SendInput !{F4}
	; ^H::SendInput, #{down}
	#IfWinActive ahk_class CabinetWClass ; Windows Explorer -views
	F1::Send !{up}
	+1::Send !{up}
	!1::Send ^+2 ; Large icons
	!2::Send ^+5 ; List
	!3::Send ^+6 ; Details
	!4::Send ^+7 ; Tiles
	!Q::Send ^+3 ; Medium Icons
	!W::Send ^+4 ; Small Icons
	!E::Send ^+8 ; Content
	!a::Send ^+1 ; Extra large icons
	!n::Send !d!vn{enter}ln


	#IfWinActive ahk_class EVERYTHING
	F1::Send ^+1
	F2::Send ^+2
	F3::Send ^+3
	F4::Send ^+6

	#IfWinActive ahk_exe chrome.exe
	::cce::chrome://extensions/{Enter}
	::ccs::chrome://settings/{Enter}
	::ccw::https://chrome.google.com/webstore{Enter}
	::cca::chrome://settings/help{Enter}
	::ccb::chrome://bookmarks{Enter}
	!WheelDown:: SendInput,{CtrlDown}{Tab}{CtrlUp}
	!WheelUp:: SendInput, {CtrlDown}{ShiftDown}{Tab}{ShiftUp}{CtrlUp}

}

{ ; HOTKEYS - Panel Specific
	#IfWinActive ahk_exe Panel.exe

	+1::GuiControl, Choose, TabName, |1
	+2::GuiControl, Choose, TabName, |2
	+3::GuiControl, Choose, TabName, |3
	+4::GuiControl, Choose, TabName, |4
	+5::GuiControl, Choose, TabName, |5
	+6::GuiControl, Choose, TabName, |6

	!WheelDown:: SendInput,{CtrlDown}{Tab}{CtrlUp}
	!WheelUp:: SendInput, {CtrlDown}{ShiftDown}{Tab}{ShiftUp}{CtrlUp}

	!d::Run taskmgr.exe
	!w::Run control.exe
	!q::Run, control /name Microsoft.UserAccounts

	!F1::
	SendMessage,0x112,0xF170,2,,Program Manager
	Return

	F1::Run *RunAs Cmd.exe
	F2::Send #r
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

	Escape::Exitapp

	F12::
		GoTo, ShowFolders
	return

	F11::
		GoTo,ShowCPUGraph
	return



	ShowFolders:
		Gui, 2:New
		Gui,  +ToolWindow +alwaysontop
		Gui,Add,Button,x+5 y+5 w50 h28, PC
		Gui,Add,Button,x+5  w50 h28, C:\
		Gui,Add,Button,x+5  w50 h28, D:\
		Gui,Add,Button,x+5  h28, Program Files
		Gui,Add,Button,x+5  h28, Program Files x86
		Gui,Add,Button,x+5  h28, User
		Gui,Add,Button,x+5  h28, Downloads
		Gui,Add,Button,x+5  h28, Documents
		Gui,Add,Button,x+5  h28, Desktop
		Gui,Add,Button,x+5  h28, AppData
		Gui, Show,  Autosize, Folders
	return

	ShowCPUGraph:
		Gui, 3:New
		Gui +AlwaysOnTop +ToolWindow
		Gui, Margin, 0, 0
		Gui, Add, Text, w610 h111 hwndhGraph
		pGraph1 := XGraph( hGraph, 0x191919, 1, "0,2,0,2", 0xFFFFFF )
		Gui, Show,, CPU Load
		SetTimer, XGraph_Plot, 100

		XGraph_Plot:
			CPUL := CPULoad()
			XGraph_Plot( pGraph1, 100 - CPUL, CPUL )
		Return

		3:GuiClose:
		pGraph := XGraph_Detach( pGraph )
		pGraph2 := XGraph_Detach( pGraph2 )
		return

		CPULoad() {
		Static PIT, PKT, PUT
		IfEqual, PIT,, Return 0, DllCall( "GetSystemTimes", "Int64P",PIT, "Int64P",PKT, "Int64P",PUT )

		DllCall( "GetSystemTimes", "Int64P",CIT, "Int64P",CKT, "Int64P",CUT )
		, IdleTime := PIT - CIT,    KernelTime := PKT - CKT,    UserTime := PUT - CUT
		, SystemTime := KernelTime + UserTime

		Return ( ( SystemTime - IdleTime ) * 100 ) // SystemTime,    PIT := CIT,    PKT := CKT,    PUT := CUT
	}

		#Include XGraph.ahk
return

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

{ ; Winkey+scroll transparency
	#IfWinActive
	^!LButton::
	MouseGetPos,,, currentWindow
	%currentWindow% := 255

	^!Wheelup::
	MouseGetPos,,, currentWindow
	if not (%currentWindow%)
	{
		GoSub GetTransparent
	}
	if (%currentWindow% < 255)
	{
		%currentWindow% += 45
	}
	WinSet, Transparent, % %currentWindow%, ahk_id %currentWindow%
	SplashImage,,w150 x0 y0 b fs12, % currentWindow . "—" . %currentWindow%
	SetTimer, TurnOffSI, 1000, On
	Return

	^!Wheeldown::
	MouseGetPos,,, currentWindow
	if not (%currentWindow%)
	{
		GoSub GetTransparent
	}
	if (%currentWindow% > 50)
	{
		%currentWindow% -= 30
	}
	WinSet, Transparent, % %currentWindow%, ahk_id %currentWindow%
	SplashImage,, w150 x0 y0 b fs12, % currentWindow . "—" . %currentWindow%
	SetTimer, TurnOffSI, 1000, On
	Return

	GetTransparent:
	WinGet, ExStyle, ExStyle, ahk_id %currentWindow%
	if (ExStyle & 0x80000)  ; 0x8 is WS_EX_LAYERED.
		{
		WinGet, TransLevel, Transparent, ahk_id %currentWindow%
		%currentWindow% := TransLevel
		}
		else
		%currentWindow% := 255
	Return

	TurnOffSI:
	SplashImage, off
	SetTimer, TurnOffSI, 1000, Off
	Return
}
#IfWinNotActive ahk_class MultitaskingViewFrame

{ ; Alt + tilde window switcher

	SetCurrentProgram() {
		global
		local ActiveProgram
		local A
		WinGet ActiveProgram, ProcessName, A
		if (ActiveProgram <> CurrentProgram) {
			if (ActiveProgram = "Explorer.EXE")
			{
				WinGet, ProgramArray, list, ahk_class CabinetWClass
			}
			else
			{
				WinGet, ProgramArray, list, ahk_exe %ActiveProgram%
			}
			CurrentProgram := ActiveProgram
			ProgramCursor := 1
		}
	}

	ResetCurrentProgram() {
		global
		if (!GetKeyState("Alt", "P")) {
			SetTimer, ResetCurrentProgram, Off
			CurrentProgram := ""
		}
	}

	SwitchToProgramWindow() {
		global
		local CursorID := ProgramArray%ProgramCursor%
		WinActivate, ahk_id %CursorID%
		SetTimer, ResetCurrentProgram, 100
	}

	NextProgramWindow() {
		global
		if (ProgramArray > 1) {
			ProgramCursor := ProgramCursor + 1
			if (ProgramCursor > ProgramArray) {
				ProgramCursor := 1
			}
			SwitchToProgramWindow()
		}
	}

	PrevProgramWindow() {
		global
		if (ProgramArray > 1) {
			ProgramCursor := ProgramCursor - 1
			if (ProgramCursor < 1) {
				ProgramCursor := ProgramArray
			}
			SwitchToProgramWindow()
		}
}

; Window switcher key bindings
	!SC029::
	SetCurrentProgram()
	NextProgramWindow()
	return

	!+SC029::
	SetCurrentProgram()
	PrevProgramWindow()
	return
}

{ ; List installed programs
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

{ ; Alt Drag
	!LButton::

	MouseGetPos,KDE_X1,KDE_Y1,KDE_id
	WinGet,KDE_Win,MinMax,ahk_id %KDE_id%
	If KDE_Win
		return
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
		WinGet,KDE_Win,MinMax,ahk_id %KDE_id%
		If KDE_Win
			WinRestore,ahk_id %KDE_id%
		Else
			WinMaximize,ahk_id %KDE_id%
		DoubleAlt := false
		return
	}

	MouseGetPos,KDE_X1,KDE_Y1,KDE_id
	WinGet,KDE_Win,MinMax,ahk_id %KDE_id%
	If KDE_Win
		return

	WinGetPos,KDE_WinX1,KDE_WinY1,KDE_WinW,KDE_WinH,ahk_id %KDE_id%
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

return

GuiClose:
GuiEscape:
Quitter:
ExitApp
return
