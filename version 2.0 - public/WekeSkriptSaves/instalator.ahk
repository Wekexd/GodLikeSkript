#singleinstance, force
Gui, Add, Progress, x6 y37 w150 h10 vDownloadprg, 0
Gui, Add, Text, x6 y7 w150 h20 , Poczekaj Do Końca Instalacji!
; Generated using SmartGUI Creator 4.0
Gui, Show, x153 y97 h59 w167, GodLikeSkript


sleep 800
FileSelectFolder, SelectedFolder, 2, %a_workingdir% , Wybierz miejsce instalacji skryptu!

FileCreateDir, %SelectedFolder%\GodLikeSkript

GuiControl,, Downloadprg, 10

sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 633, 633 ;-----------633-------------
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 633, 633repair ;repair
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 633, 633naprawkilof ;naprawkilof
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 633, 633cx ;cx
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 633, 633supercx ;supercx
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 633, 633lewoprawoprzodtyl ;lewoprawoprzodtyl
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 633, 633lewoprawo ;lewoprawo
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 633, 633inventory ;inventory
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 633, 633jedzenie ;jedzenie
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 533, 533 ;-----------533------------
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 533, 533repair ;repair
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 533, 533naprawkilof ;naprawkilof
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 533, 533cx ;cx
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 533, 533supercx ;supercx
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 533, 533shift ;shift
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 533, 533inventory ;inventory
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, 533, 533jedzenie ;jedzenie
GuiControl,, Downloadprg, +2
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda1 ;--------------Commands------------
IniWrite, -, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda1text ;--------------Commands------------
GuiControl,, Downloadprg, +4
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda2
IniWrite, -, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda2text ;--------------Commands------------	
GuiControl,, Downloadprg, +4
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda3
IniWrite, -, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda3text ;--------------Commands------------
GuiControl,, Downloadprg, +4
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda4
IniWrite, -, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda4text ;--------------Commands------------
GuiControl,, Downloadprg, +4
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda5
IniWrite, -, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda5text ;--------------Commands------------
GuiControl,, Downloadprg, +4
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda6
IniWrite, -, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda6text ;--------------Commands------------
GuiControl,, Downloadprg, +4
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda7
IniWrite, -, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda7text ;--------------Commands------------
GuiControl,, Downloadprg, +4
sleep 10
IniWrite, 0, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda8
IniWrite, -, %SelectedFolder%\GodLikeSkript\Options.ini, cmds, komenda8text ;--------------Commands------------
GuiControl,, Downloadprg, +4
sleep 10
IniWrite, 1, %SelectedFolder%\GodLikeSkript\Options.ini, Keybinds, kilof ;--------------Keybinds------------------
IniWrite, 2, %SelectedFolder%\GodLikeSkript\Options.ini, Keybinds, jedzenie ;--------------Keybinds------------------
IniWrite, 10, %SelectedFolder%\GodLikeSkript\Options.ini, Keybinds, iloscStoniarek ;--------------Keybinds------------------
IniWrite, 44, %SelectedFolder%\GodLikeSkript\Options.ini, Keybinds, iloscPrzejsc ;--------------Keybinds------------------
IniWrite, t, %SelectedFolder%\GodLikeSkript\Options.ini, Keybinds, Chat ;--------------Keybinds------------------
IniWrite, e, %SelectedFolder%\GodLikeSkript\Options.ini, Keybinds, Eq ;--------------Keybinds------------------
GuiControl,, Downloadprg, +6
sleep 10
FileInstall, menu.jpg, %SelectedFolder%\GodLikeSkript\menu.jpg, 1
GuiControl,, Downloadprg, +2
sleep 10
FileInstall, 633.jpg, %SelectedFolder%\GodLikeSkript\633.jpg, 1
GuiControl,, Downloadprg, +2
sleep 10
FileInstall, 533.jpg, %SelectedFolder%\GodLikeSkript\533.jpg, 1
GuiControl,, Downloadprg, +2
sleep 10
FileInstall, liscie.jpg, %SelectedFolder%\GodLikeSkript\liscie.jpg, 1
GuiControl,, Downloadprg, +2
sleep 10	
FileInstall, button.png, %SelectedFolder%\GodLikeSkript\button.png, 1
GuiControl,, Downloadprg, +2
sleep 10
FileInstall, clicker.jpg, %SelectedFolder%\GodLikeSkript\clicker.jpg, 1
GuiControl,, Downloadprg, +2
sleep 10
FileInstall, LoadScreen.jpg, %SelectedFolder%\GodLikeSkript\LoadScreen.jpg, 1
GuiControl,, Downloadprg, +2
sleep 10
;FileInstall, clicker.jpg, %SelectedFolder%\GodLikeSkript\clicker.jpg, 1	
;GuiControl,, Downloadprg, +2
;sleep 10
FileInstall, GodLike.exe, %SelectedFolder%\GodLikeSkript\GodLikeSkript.exe, 1
GuiControl,, Downloadprg, +2
sleep 10
GuiControl,, Downloadprg, 100
sleep 2000
Msgbox, | Instalacja Przebiegła Pomyślnie! | TexturePack Nie Został Zainstalowany! Pobierz Go Z Githuba! (Strona Zostanie Otwarta Automatycznie) |
pagedownload = https://github.com/Wekexd/GodLikeSkript/archive/master.zip
Run, chrome.exe %pagedownload%
Exitapp
return
;FileInstall, clicker.exe, c:\GodLikeSkript\clicker.exe, 1	
;FileInstall, clicker.jpg, c:\GodLikeSkript\clicker.jpg, 1	

return

GuiClose:
ExitApp
return