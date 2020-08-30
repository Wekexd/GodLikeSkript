;----------------------------------VARIABLES----------------------------------
	pageversion = https://pastebin.com/raw/RVwrJAEB
	pagedownload = https://pastebin.com/raw/m4YqMdD2
	reasonpage = https://pastebin.com/raw/pyM5kz1x
;-------------------------------Version-Check--------------------------------------
IfNotExist, %A_WorkingDir%\Weke Options
{
	FileCreateDir, %A_WorkingDir%\Weke Options
}
FileDelete %A_WorkingDir%\Weke Options\version.html
urldownloadtofile, %pageversion% , %A_WorkingDir%\Weke Options\version.html
FileRead , page , %A_WorkingDir%\Weke Options\version.html
FileDelete %A_WorkingDir%\Weke Options\version.html
FileRemoveDir, %A_WorkingDir%\Weke Options
;---------------------------------delete--------------------------------
;next version
;---------------------------------STOP--------------------------------
if page = stop
{
	IfNotExist, %A_WorkingDir%\Weke Options
	{
		FileCreateDir, %A_WorkingDir%\Weke Options
	}
	FileDelete %A_WorkingDir%\Weke Options\reasondownload.html
	urldownloadtofile, %reasonpage% , %A_WorkingDir%\Weke Options\reasondownload.html
	FileRead , reason , %A_WorkingDir%\Weke Options\reasondownload.html
	FileDelete %A_WorkingDir%\Weke Options\reasondownload.html
	FileRemoveDir, %A_WorkingDir%\Weke Options
	Msgbox, [WEKE] Twój Skrypt Został Zablokowany | Powód: %reason% !
	ExitApp
}
;---------------------------------version--------------------------------
if page != 2.0
{
	IfNotExist, %A_WorkingDir%\Weke Options
	{
		FileCreateDir, %A_WorkingDir%\Weke Options
	}
	FileDelete %A_WorkingDir%\Weke Options\versiondownload.html
	urldownloadtofile, %pagedownload% , %A_WorkingDir%\Weke Options\versiondownload.html
	FileRead , download , %A_WorkingDir%\Weke Options\versiondownload.html
	FileDelete %A_WorkingDir%\Weke Options\versiondownload.html
	FileRemoveDir, %A_WorkingDir%\Weke Options
	Msgbox, Twoja Wersja Skrypta Jest Nie Aktualna! Pobierz Nową: %pagedownload%
	Run, chrome.exe %pagedownload%
	ExitApp
}
;-------------------------------Special-Options------------------------------------	
Process, Priority,, High 
I_Icon = icon.png
IfExist, %I_Icon% 
	Menu, Tray, Icon, %I_Icon%
#SingleInstance, force
;-------------------------------Clear Everything------------------------------------
	kilofszesc = 0
	kilofpiec = 0
	kilofszescrepair = 0
	kilofpiecrepair = 0
	kilofszescnaprawkilof = 0
	kilofpiecnaprawkilof = 0	
	kilofszesccx = 0
	kilofpieccx = 0
	kilofszescsupercx = 0
	kilofpiecsupercx = 0
	kilofszesclewoprawo = 0
	kilofszesclewoprawoprzodtyl = 0
	kilofszescinventory = 0
	kilofpiecinventory = 0
	kilofszesceat = 0
	kilofpieceat = 0
	kilofpiecshift = 0
	dodatkowakomendadone = 0
	dodatkowakomendadone2 = 0
	dodatkowakomendadone3 = 0
	dodatkowakomendadone4 = 0
	dodatkowakomendadone5 = 0
	dodatkowakomendadone6 = 0
	dodatkowakomendadone7 = 0
	dodatkowakomendadone8 = 0
	dodatkowakomendasave1 = 0
	dodatkowakomendasave2 = 0
	dodatkowakomendasave3 = 0
	dodatkowakomendasave4 = 0
	dodatkowakomendasave5 = 0
	dodatkowakomendasave6 = 0
	dodatkowakomendasave7 = 0
	dodatkowakomendasave8 = 0
	liscie = 0
	i = 0
	chatdonel = 0
	
;-------------------------------GUI------------------------------------	
Gui, Add, Picture, X0 Y0,%a_workingdir%\LoadScreen.jpg ;background
Gui, -Caption
Gui, Show, W738 H402, | GodLikeSkript |  ;menu name <3 GodLikeSkript By Weke_exe <3 | <3 LGND <3	
chatdonel = 1
sleep 4500
Gui, Destroy

chatdonel = 0
Gui, Font, 33ccff, Verdana ;colors
Gui, Color, c282828, Verdana ;colors
donatorspage = https://pastebin.com/raw/mfXdfcpA
IfNotExist, %A_WorkingDir%\Weke Options
{
	FileCreateDir, %A_WorkingDir%\Weke Options
}
FileDelete %A_WorkingDir%\Weke Options\donators.html
urldownloadtofile, %donatorspage% , %A_WorkingDir%\Weke Options\donators.html
FileRead , donators , %A_WorkingDir%\Weke Options\donators.html
kilofszesc = 0
kilofpiec = 0
liscie = 0
clicker = 0
Gui, Destroy
Gui, Show, W1280 H720, | GodLikeSkript |  ;menu name <3 GodLikeSkript By Weke_exe <3 | <3 LGND <3	
Gui, Color, c282828, Verdana ;colors
Gui, Font, f2f2f2, Verdana ;colors
gui, add, text, Center x640 y459, %donators%	
Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\menu.jpg ;background
Gui, Add, Picture, X25 Y23 gMenu633button,%a_workingdir%\menu633button.png ;background
Gui, Add, Picture, X25 Y121 gMenu533button,%a_workingdir%\menu633button.png ;background
Gui, Add, Picture, X25 Y219 gMenulisciebutton,%a_workingdir%\menu633button.png ;background
Gui, Add, Picture, X25 Y317 gMenuclickerbutton,%a_workingdir%\menu633button.png ;background	
Gui, Add, Picture, X25 Y415 gMenubutton,%a_workingdir%\menu633button.png ;background
Gui, Add, Picture, X25 Y513 gMenudiscordbutton,%a_workingdir%\menu633button.png ;background
Menu, Tray, noStandard
Menu, Tray, Add
Menu, Tray, Add, Wylacz!, ExitApptray
Menu, Tray, Add, Discord, Discord 
Menu, Tray, Add
Menu, Tray, Click, 1
Menu, Tray, Tip, GodLikeSkript
FileDelete %A_WorkingDir%\Weke Options\donators.html
FileRemoveDir, %A_WorkingDir%\Weke Options	
return	

ExitApptray:
{
	Exitapp
}

;Gui, Add, Checkbox, Group x386 y212 gCheck vRadioGroup1, ;633
;Gui, Add, Checkbox, x1031 y216 gCheck vRadioGroup2, ;533

;Gui, Add, Checkbox, Group x132 y270 gCheck vRadioGroup3, ;repair633
;Gui, Add, Checkbox, x777 y270 gCheck vRadioGroup4, ;repair533
;Gui, Add, Checkbox, x375 y270 gCheck vRadioGroup5, ;naprawkilof633
;Gui, Add, Checkbox, x1020 y270 gCheck vRadioGroup6, ;naprawkilof533

;Gui, Add, Checkbox, group x66 y350 gCheck vRadioGroup7, ;cx633
;Gui, Add, Checkbox, x716 y350 gCheck vRadioGroup8, ;cx533
;Gui, Add, Checkbox, x447 y350 gCheck vRadioGroup11, ;supercx633
;Gui, Add, Checkbox, x1090 y352 gCheck vRadioGroup12, ;supercx533

;Gui, Add, Checkbox, group x230 y675 gCheck vRadioGroup9, ;lewoprawo
;Gui, Add, Checkbox, x412 y620 gCheck vRadioGroup10, ;lewoprawoprzodtyl

;Gui, Add, Checkbox, group x197 y446 gCheck vRadioGroup13, ;inventory633
;Gui, Add, Checkbox, x1070 y442 gCheck vRadioGroup14, ;inventory533

;Gui, Add, Checkbox, group x160 y510 gCheck vRadioGroup15, ;jedzenie633
;Gui, Add, Checkbox, x1105 y510 gCheck vRadioGroup16, ;jedzenie533

;Gui, Add, Checkbox, group x1150 y574 gCheck vRadioGroup17, ;shift533

;Gui, Add, Radio, group x566 y444 gCheck vRadioGroup18, ;komendy
;Gui, Add, Radio, group x566 y476 gCheck vRadioGroup19, ;komendy
;Gui, Add, Radio, group x566 y515 gCheck vRadioGroup20, ;komendy
;Gui, Add, Radio, group x566 y551 gCheck vRadioGroup21, ;komendy
;Gui, Add, Radio, group x566 y584 gCheck vRadioGroup22, ;komendy
;Gui, Add, Radio, group x566 y618 gCheck vRadioGroup23, ;komendy
;Gui, Add, Radio, group x566 y657 gCheck vRadioGroup24, ;komendy
;Gui, Add, Radio, group x566 y692 gCheck vRadioGroup25, ;komendy
;Gui, Font, 33ccff, Verdana ;colors
;Gui, Add, Text, x600 y444 w150 h45 vtextToUpdate18, ;Command, Text
;Gui, Add, Text, x600 y476 w150 h45 vtextToUpdate19, ;Command, Text
;Gui, Add, Text, x600 y515 w150 h45 vtextToUpdate20, ;Command, Text
;Gui, Add, Text, x600 y551 w150 h45 vtextToUpdate21, ;Command, Text
;Gui, Add, Text, x600 y584 w150 h45 vtextToUpdate22, ;Command, Text
;Gui, Add, Text, x600 y618 w150 h45 vtextToUpdate23, ;Command, Text
;Gui, Add, Text, x600 y657 w150 h45 vtextToUpdate24, ;Command, Text
;Gui, Add, Text, x600 y692 w150 h45 vtextToUpdate25, ;Command, Text


;-------------------------------GUI-Control------------------------------------	

Gui, Show
Return
 
GuiClose:
ExitApp
return
 
;---------------------------------GUI-BUTTON-------------------------------------

Szesc:
{
	kilofszesc = 1
	kilofpiec = 0
	liscie = 0
	clicker = 0
	Gui, Destroy
	Gui, Show, W1280 H720, | GodLikeSkript |  ;menu name <3 GodLikeSkript By Weke_exe <3 | <3 LGND <3	
	Gui, Color, c282828, Verdana ;colors
	Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\633.jpg ;background

	Gui, Add, Picture, X25 Y23 gMenu633button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y121 gMenu533button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y219 gMenulisciebutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y317 gMenuclickerbutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y415 gMenubutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y513 gMenudiscordbutton,%a_workingdir%\menu633button.png ;background

	Gui, Add, Checkbox, Group x263 y70 h13 w13 gCheck vRadioGroup3, ;repair633
	Gui, Add, Checkbox, x263 y114 h13 w13 gCheck vRadioGroup5, ;naprawkilof633

	Gui, Add, Checkbox, group x263 y204 h13 w13 gCheck vRadioGroup7, ;cx633
	Gui, Add, Checkbox, x263 y246 h13 w13 gCheck vRadioGroup11, ;supercx633

	Gui, Add, Checkbox, group x584 y250 h13 w13 gCheck vRadioGroup9, ;LEWOPRAWO
	Gui, Add, Checkbox, x584 y200 h13 w13 gCheck vRadioGroup10, ;LEWOPRAWOGORADOL

	Gui, Add, Checkbox, group x584 y55 h13 w13 gCheck vRadioGroup13, ;inventory633

	Gui, Add, Checkbox, group x584 y100 h13 w13 gCheck vRadioGroup15, ;jedzenie633

	Gui, Add, Radio, group x849 y58 w14 h14 gCheck vRadioGroup18, ;komendy
	Gui, Add, Radio, group x849 y92 w14 h14 gCheck vRadioGroup19, ;komendy
	Gui, Add, Radio, group x849 y129 w14 h14 gCheck vRadioGroup20, ;komendy
	Gui, Add, Radio, group x849 y160 w14 h14 gCheck vRadioGroup21, ;komendy
	Gui, Add, Radio, group x849 y194 w14 h14 gCheck vRadioGroup22, ;komendy
	Gui, Add, Radio, group x849 y233 w14 h14 gCheck vRadioGroup23, ;komendy
	Gui, Add, Radio, group x849 y269 w14 h14 gCheck vRadioGroup24, ;komendy
	Gui, Add, Radio, group x849 y302 w14 h14 gCheck vRadioGroup25, ;komendy
	Gui, Font, 33ccff, Verdana ;colors
	Gui, Add, Text, x873 y58 w150 h20 vtextToUpdate18, ;Command, Text
	Gui, Add, Text, x873 y92 w150 h20 vtextToUpdate19, ;Command, Text
	Gui, Add, Text, x873 y129 w150 h20 vtextToUpdate20, ;Command, Text
	Gui, Add, Text, x873 y160 w150 h20 vtextToUpdate21, ;Command, Text
	Gui, Add, Text, x873 y194 w150 h20 vtextToUpdate22, ;Command, Text
	Gui, Add, Text, x873 y233 w150 h20 vtextToUpdate23, ;Command, Text
	Gui, Add, Text, x873 y269 w150 h20 vtextToUpdate24, ;Command, Text
	Gui, Add, Text, x873 y302 w150 h20 vtextToUpdate25, ;Command, Text
	
	Gui, Font, c282828, Verdana ;colors
	
	Gui, Add, Edit, vSlotJedzenie center Number X264 Y468 W14 H14 limit1 -vscroll -E0x200, 2
	Gui, Add, Edit, vPrzyciskChat center X264 Y429 W14 H14 limit1 -vscroll -E0x200, t
	Gui, Add, Edit, vSlotKilof center Number X264 Y507 W14 H14 limit1 -vscroll -E0x200, 1
	Gui, Add, Edit, vPrzejscia center Number X255 Y585 W29 H14 limit3 -vscroll -E0x200, 44
	Gui, Add, Edit, vPrzyciskeq center X264 Y547 W14 H14 limit1 -vscroll -E0x200, e
	Gui, Add, Edit, vStoniarkiIlosc center Number X550 Y460 W22 H14 limit2 -vscroll -E0x200, 10
	
	Gui, Font, c282828, Verdana ;colors
;	gui, add, button, x1151 y151 h20 w120 gReloaduj, Powrót Do Menu! ;Reload Button
	gui, add, button, x802 y412 h20 w70 gSave, Zapisz! ;Save Button
	gui, add, button, x802 y457 h20 w70 gLoad, Wczytaj! ;Load Button271 426

	return
}

Piec:
{
	kilofszesc = 0
	kilofpiec = 1
	liscie = 0
	clicker = 0
	Gui, Destroy
	Gui, Show, W1280 H720, | GodLikeSkript |  ;menu name <3 GodLikeSkript By Weke_exe <3 | <3 LGND <3	
	Gui, Color, c282828, Verdana ;colors
	Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\533.jpg ;background

	Gui, Add, Picture, X25 Y23 gMenu633button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y121 gMenu533button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y219 gMenulisciebutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y317 gMenuclickerbutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y415 gMenubutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y513 gMenudiscordbutton,%a_workingdir%\menu633button.png ;background

	Gui, Add, Checkbox, Group x263 y70 h13 w13 gCheck vRadioGroup4, ;repair533
	Gui, Add, Checkbox, x263 y114 h13 w13 gCheck vRadioGroup6, ;naprawkilof533

	Gui, Add, Checkbox, group x263 y204 h13 w13 gCheck vRadioGroup8, ;cx533
	Gui, Add, Checkbox, x263 y246 h13 w13 gCheck vRadioGroup12, ;supercx533

	Gui, Add, Checkbox, group x584 y55 h13 w13 gCheck vRadioGroup14, ;inventory533

	Gui, Add, Checkbox, group x584 y100 h13 w13 gCheck vRadioGroup16, ;jedzenie533

	Gui, Add, Checkbox, group x584 y150 h13 w13 gCheck vRadioGroup17 W14 H14, ;shift533

	Gui, Add, Radio, group x849 y58 w14 h14 gCheck vRadioGroup18, ;komendy
	Gui, Add, Radio, group x849 y92 w14 h14 gCheck vRadioGroup19, ;komendy
	Gui, Add, Radio, group x849 y129 w14 h14 gCheck vRadioGroup20, ;komendy
	Gui, Add, Radio, group x849 y160 w14 h14 gCheck vRadioGroup21, ;komendy
	Gui, Add, Radio, group x849 y194 w14 h14 gCheck vRadioGroup22, ;komendy
	Gui, Add, Radio, group x849 y233 w14 h14 gCheck vRadioGroup23, ;komendy
	Gui, Add, Radio, group x849 y269 w14 h14 gCheck vRadioGroup24, ;komendy
	Gui, Add, Radio, group x849 y302 w14 h14 gCheck vRadioGroup25, ;komendy
	Gui, Font, 33ccff, Verdana ;colors
	Gui, Add, Text, x873 y58 w150 h20 vtextToUpdate18, ;Command, Text
	Gui, Add, Text, x873 y92 w150 h20 vtextToUpdate19, ;Command, Text
	Gui, Add, Text, x873 y129 w150 h20 vtextToUpdate20, ;Command, Text
	Gui, Add, Text, x873 y160 w150 h20 vtextToUpdate21, ;Command, Text
	Gui, Add, Text, x873 y194 w150 h20 vtextToUpdate22, ;Command, Text
	Gui, Add, Text, x873 y233 w150 h20 vtextToUpdate23, ;Command, Text
	Gui, Add, Text, x873 y269 w150 h20 vtextToUpdate24, ;Command, Text
	Gui, Add, Text, x873 y302 w150 h20 vtextToUpdate25, ;Command, Text

	Gui, Font, c282828, Verdana ;colors

	Gui, Add, Edit, vSlotJedzenie center Number X264 Y468 W14 H14 limit1 -vscroll -E0x200, 2
	Gui, Add, Edit, vPrzyciskChat center X264 Y429 W14 H14 limit1 -vscroll -E0x200, t
	Gui, Add, Edit, vSlotKilof center Number X264 Y507 W14 H14 limit1 -vscroll -E0x200, 1
	Gui, Add, Edit, vPrzyciskeq center X264 Y547 W14 H14 limit1 -vscroll -E0x200, e

	Gui, Font, c282828, Verdana ;colors
;	gui, add, button, x1151 y151 h20 w120 gReloaduj, Powrót Do Menu! ;Reload Button
	gui, add, button, x802 y412 h20 w70 gSave, Zapisz! ;Save Button
	gui, add, button, x802 y457 h20 w70 gLoad, Wczytaj! ;Load Button271 426

	return
	

}


Instrukcje:
{
	gui, Destroy
	Gui, Color, Black, Verdana ;colors
	Gui, Show, W1280 H720, | GodLikeSkript By Weke_exe |  ;menu name
	Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\instrukcje.jpg ;background	
	Gui, Font, 33ccff, Verdana ;colors
;	gui, add, button, x1151 y151 h20 w120 gReloaduj, Powrót Do Menu! ;Reload Button		
	return
}


;--- 98 odstępu
Discord:
{
	discordpage = https://discord.gg/7sGYj9
	Run, chrome.exe %discordpage%
	return
}
;-------------------Troll-xd-----------------------
#ifwinactive,| GodLikeSkript |
L::
{
	if chatdonel = 1
	{
		Gui, Destroy
		sleep 100
		chatdonel = 0
		Gui, Show, W730 H372, | GodLikeSkript |  ;menu name <3 GodLikeSkript By Weke_exe <3 | <3 LGND <3				
		FileInstall, chatisalie.jpg, %a_workingdir%\EasterEgg.jpg, 1
		sleep 10
		Gui, -Caption
		Gui, Add, Picture, X0 Y0, %a_workingdir%\chatisalie.jpg	
		FileDelete %a_workingdir%\chatisalie.jpg
		sleep 10	
		sleep 7000
		Gui, Destroy
		
		Gui, Font, 33ccff, Verdana ;colors
		Gui, Color, c282828, Verdana ;colors
		donatorspage = https://pastebin.com/raw/mfXdfcpA
		IfNotExist, %A_WorkingDir%\Weke Options
		{
			FileCreateDir, %A_WorkingDir%\Weke Options
		}
		FileDelete %A_WorkingDir%\Weke Options\donators.html
		urldownloadtofile, %donatorspage% , %A_WorkingDir%\Weke Options\donators.html
		FileRead , donators , %A_WorkingDir%\Weke Options\donators.html
		kilofszesc = 0
		kilofpiec = 0
		liscie = 0
		clicker = 0
		Gui, Destroy
		Gui, Show, W1280 H720, | GodLikeSkript |  ;menu name <3 GodLikeSkript By Weke_exe <3 | <3 LGND <3	
		Gui, Color, c282828, Verdana ;colors
		Gui, Font, f2f2f2, Verdana ;colors
		gui, add, text, Center x640 y459, %donators%	
		Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\menu.jpg ;background
		Gui, Add, Picture, X25 Y23 gMenu633button,%a_workingdir%\menu633button.png ;background
		Gui, Add, Picture, X25 Y121 gMenu533button,%a_workingdir%\menu633button.png ;background
		Gui, Add, Picture, X25 Y219 gMenulisciebutton,%a_workingdir%\menu633button.png ;background
		Gui, Add, Picture, X25 Y317 gMenuclickerbutton,%a_workingdir%\menu633button.png ;background	
		Gui, Add, Picture, X25 Y415 gMenubutton,%a_workingdir%\menu633button.png ;background
		Gui, Add, Picture, X25 Y513 gMenudiscordbutton,%a_workingdir%\menu633button.png ;background
		Menu, Tray, noStandard
		Menu, Tray, Add
		Menu, Tray, Add, Wylacz!, ExitApptray
		Menu, Tray, Add, Discord, Discord 
		Menu, Tray, Add
		Menu, Tray, Click, 1
		Menu, Tray, Tip, GodLikeSkript
		FileDelete %A_WorkingDir%\Weke Options\donators.html
		FileRemoveDir, %A_WorkingDir%\Weke Options	
		return	
	}
	return
}

;-------------------Gui-Button---------------------

Menu633button:
{
	kilofszesc = 1
	kilofpiec = 0
	liscie = 0
	clicker = 0
	Gui, Destroy
	Gui, Show, W1280 H720, | GodLikeSkript |  ;menu name <3 GodLikeSkript By Weke_exe <3 | <3 LGND <3	
	Gui, Color, c282828, Verdana ;colors
	Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\633.jpg ;background

	Gui, Add, Picture, X25 Y23 gMenu633button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y121 gMenu533button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y219 gMenulisciebutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y317 gMenuclickerbutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y415 gMenubutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y513 gMenudiscordbutton,%a_workingdir%\menu633button.png ;background

	Gui, Add, Checkbox, Group x263 y70 h13 w13 gCheck vRadioGroup3, ;repair633
	Gui, Add, Checkbox, x263 y114 h13 w13 gCheck vRadioGroup5, ;naprawkilof633

	Gui, Add, Checkbox, group x263 y204 h13 w13 gCheck vRadioGroup7, ;cx633
	Gui, Add, Checkbox, x263 y246 h13 w13 gCheck vRadioGroup11, ;supercx633

	Gui, Add, Checkbox, group x584 h13 w13 y200 gCheck vRadioGroup9 W14 H14 ;LEWOPRAWO
	Gui, Add, Checkbox, x584 y250 h13 w13 gCheck vRadioGroup10 W14 H14 ;LEWOPRAWOGORADOL

	Gui, Add, Checkbox, group x584 y55 h13 w13 gCheck vRadioGroup13, ;inventory633

	Gui, Add, Checkbox, group x584 y100 h13 w13 gCheck vRadioGroup15, ;jedzenie633

	Gui, Add, Radio, group x849 y58 w14 h14 gCheck vRadioGroup18, ;komendy
	Gui, Add, Radio, group x849 y92 w14 h14 gCheck vRadioGroup19, ;komendy
	Gui, Add, Radio, group x849 y129 w14 h14 gCheck vRadioGroup20, ;komendy
	Gui, Add, Radio, group x849 y160 w14 h14 gCheck vRadioGroup21, ;komendy
	Gui, Add, Radio, group x849 y194 w14 h14 gCheck vRadioGroup22, ;komendy
	Gui, Add, Radio, group x849 y233 w14 h14 gCheck vRadioGroup23, ;komendy
	Gui, Add, Radio, group x849 y269 w14 h14 gCheck vRadioGroup24, ;komendy
	Gui, Add, Radio, group x849 y302 w14 h14 gCheck vRadioGroup25, ;komendy
	Gui, Font, 33ccff, Verdana ;colors
	Gui, Add, Text, x873 y58 w150 h20 vtextToUpdate18, ;Command, Text
	Gui, Add, Text, x873 y92 w150 h20 vtextToUpdate19, ;Command, Text
	Gui, Add, Text, x873 y129 w150 h20 vtextToUpdate20, ;Command, Text
	Gui, Add, Text, x873 y160 w150 h20 vtextToUpdate21, ;Command, Text
	Gui, Add, Text, x873 y194 w150 h20 vtextToUpdate22, ;Command, Text
	Gui, Add, Text, x873 y233 w150 h20 vtextToUpdate23, ;Command, Text
	Gui, Add, Text, x873 y269 w150 h20 vtextToUpdate24, ;Command, Text
	Gui, Add, Text, x873 y302 w150 h20 vtextToUpdate25, ;Command, Text
	
	Gui, Font, c282828, Verdana ;colors
	
	Gui, Add, Edit, vSlotJedzenie center Number X264 Y468 W14 H14 limit1 -vscroll -E0x200, 2
	Gui, Add, Edit, vPrzyciskChat center X264 Y429 W14 H14 limit1 -vscroll -E0x200, t
	Gui, Add, Edit, vSlotKilof center Number X264 Y507 W14 H14 limit1 -vscroll -E0x200, 1
	Gui, Add, Edit, vPrzejscia center Number X255 Y585 W29 H14 limit3 -vscroll -E0x200, 44
	Gui, Add, Edit, vPrzyciskeq center X264 Y547 W14 H14 limit1 -vscroll -E0x200, e
	Gui, Add, Edit, vStoniarkiIlosc center Number X550 Y460 W22 H14 limit2 -vscroll -E0x200, 10
	
	Gui, Font, c282828, Verdana ;colors
	;gui, add, button, x1151 y151 h20 w120 gReloaduj, Powrót Do Menu! ;Reload Button
	gui, add, button, x802 y412 h20 w70 gSave, Zapisz! ;Save Button
	gui, add, button, x802 y457 h20 w70 gLoad, Wczytaj! ;Load Button271 426

	return
}

Menu533button:
{
	kilofszesc = 0
	kilofpiec = 1
	liscie = 0
	clicker = 0
	Gui, Destroy
	Gui, Show, W1280 H720, | GodLikeSkript |  ;menu name <3 GodLikeSkript By Weke_exe <3 | <3 LGND <3	
	Gui, Color, c282828, Verdana ;colors
	Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\533.jpg ;background

	Gui, Add, Picture, X25 Y23 gMenu633button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y121 gMenu533button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y219 gMenulisciebutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y317 gMenuclickerbutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y415 gMenubutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y513 gMenudiscordbutton,%a_workingdir%\menu633button.png ;background

	Gui, Add, Checkbox, Group x263 y70 h13 w13 gCheck vRadioGroup4, ;repair533
	Gui, Add, Checkbox, x263 y114 h13 w13 gCheck vRadioGroup6, ;naprawkilof533

	Gui, Add, Checkbox, group x263 y204 h13 w13 gCheck vRadioGroup8, ;cx533
	Gui, Add, Checkbox, x263 y246 h13 w13 gCheck vRadioGroup12, ;supercx533

	Gui, Add, Checkbox, group x584 y55 h13 w13 gCheck vRadioGroup14, ;inventory533

	Gui, Add, Checkbox, group x584 y100 h13 w13 gCheck vRadioGroup16, ;jedzenie533

	Gui, Add, Checkbox, group x584 y150 h13 w13 gCheck vRadioGroup17 W14 H14, ;shift533

	Gui, Add, Radio, group x849 y58 w14 h14 gCheck vRadioGroup18, ;komendy
	Gui, Add, Radio, group x849 y92 w14 h14 gCheck vRadioGroup19, ;komendy
	Gui, Add, Radio, group x849 y129 w14 h14 gCheck vRadioGroup20, ;komendy
	Gui, Add, Radio, group x849 y160 w14 h14 gCheck vRadioGroup21, ;komendy
	Gui, Add, Radio, group x849 y194 w14 h14 gCheck vRadioGroup22, ;komendy
	Gui, Add, Radio, group x849 y233 w14 h14 gCheck vRadioGroup23, ;komendy
	Gui, Add, Radio, group x849 y269 w14 h14 gCheck vRadioGroup24, ;komendy
	Gui, Add, Radio, group x849 y302 w14 h14 gCheck vRadioGroup25, ;komendy
	Gui, Font, 33ccff, Verdana ;colors
	Gui, Add, Text, x873 y58 w150 h20 vtextToUpdate18, ;Command, Text
	Gui, Add, Text, x873 y92 w150 h20 vtextToUpdate19, ;Command, Text
	Gui, Add, Text, x873 y129 w150 h20 vtextToUpdate20, ;Command, Text
	Gui, Add, Text, x873 y160 w150 h20 vtextToUpdate21, ;Command, Text
	Gui, Add, Text, x873 y194 w150 h20 vtextToUpdate22, ;Command, Text
	Gui, Add, Text, x873 y233 w150 h20 vtextToUpdate23, ;Command, Text
	Gui, Add, Text, x873 y269 w150 h20 vtextToUpdate24, ;Command, Text
	Gui, Add, Text, x873 y302 w150 h20 vtextToUpdate25, ;Command, Text

	Gui, Font, c282828, Verdana ;colors

	Gui, Add, Edit, vSlotJedzenie center Number X264 Y468 W14 H14 limit1 -vscroll -E0x200, 2
	Gui, Add, Edit, vPrzyciskChat center X264 Y429 W14 H14 limit1 -vscroll -E0x200, t
	Gui, Add, Edit, vSlotKilof center Number X264 Y507 W14 H14 limit1 -vscroll -E0x200, 1
	Gui, Add, Edit, vPrzyciskeq center X264 Y547 W14 H14 limit1 -vscroll -E0x200, e

	Gui, Font, c282828, Verdana ;colors
	;gui, add, button, x1151 y151 h20 w120 gReloaduj, Powrót Do Menu! ;Reload Button
	gui, add, button, x802 y412 h20 w70 gSave, Zapisz! ;Save Button
	gui, add, button, x802 y457 h20 w70 gLoad, Wczytaj! ;Load Button271 426	
	return
}

Liscie:
{
	kilofszesc = 0
	kilofpiec = 0
	liscie = 1
	clicker = 0
	Gui, Destroy
	Gui, Color, Black, Verdana ;colors
	Gui, Show, W1280 H720, | GodLikeSkript |  ;menu name
	Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\liscie.jpg ;background
	Gui, Add, Picture, X25 Y23 gMenu633button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y121 gMenu533button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y219 gMenulisciebutton,%a_workingdir%\menu633button.png ;background	
	Gui, Add, Picture, X25 Y317 gMenuclickerbutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y415 gMenubutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y513 gMenudiscordbutton,%a_workingdir%\menu633button.png ;background
	return
}

Menulisciebutton:
{
	kilofszesc = 0
	kilofpiec = 0
	liscie = 1
	clicker = 0
	Gui, Destroy
	Gui, Color, Black, Verdana ;colors
	Gui, Show, W1280 H720, | GodLikeSkript |  ;menu name
	Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\liscie.jpg ;background
	Gui, Add, Picture, X25 Y23 gMenu633button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y121 gMenu533button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y219 gMenulisciebutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y317 gMenuclickerbutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y415 gMenubutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y513 gMenudiscordbutton,%a_workingdir%\menu633button.png ;background
	return
}

Clicker:
{
	kilofszesc = 0
	kilofpiec = 0
	liscie = 1
	clicker = 0
	Gui, Destroy
	Gui, Color, Black, Verdana ;colors
	Gui, Show, W1280 H720, | GodLikeSkript |  ;menu name
	Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\clicker.jpg ;background
	Gui, Add, Picture, X25 Y23 gMenu633button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y121 gMenu533button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y219 gMenulisciebutton,%a_workingdir%\menu633button.png ;background	
	Gui, Add, Picture, X25 Y317 gMenuclickerbutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y415 gMenubutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y513 gMenudiscordbutton,%a_workingdir%\menu633button.png ;background
	return
}

Menuclickerbutton:
{
	kilofszesc = 0
	kilofpiec = 0
	liscie = 1
	clicker = 0
	Gui, Destroy
	Gui, Show, W1280 H720, | GodLikeSkript |  ;menu name <3 GodLikeSkript By Weke_exe <3 | <3 LGND <3	
	Gui, Color, Black, Verdana ;colors
	Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\clicker.jpg ;background
	Gui, Add, Picture, X25 Y23 gMenu633button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y121 gMenu533button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y219 gMenulisciebutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y317 gMenuclickerbutton,%a_workingdir%\menu633button.png ;background	
	Gui, Add, Picture, X25 Y415 gMenubutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y513 gMenudiscordbutton,%a_workingdir%\menu633button.png ;background
	return
}

Menubutton:
{
	Gui, Font, 33ccff, Verdana ;colors
	Gui, Color, c282828, Verdana ;colors
	donatorspage = https://pastebin.com/raw/mfXdfcpA
	IfNotExist, %A_WorkingDir%\Weke Options
	{
		FileCreateDir, %A_WorkingDir%\Weke Options
	}
	FileDelete %A_WorkingDir%\Weke Options\donators.html
	urldownloadtofile, %donatorspage% , %A_WorkingDir%\Weke Options\donators.html
	FileRead , donators , %A_WorkingDir%\Weke Options\donators.html
	kilofszesc = 0
	kilofpiec = 0
	liscie = 0
	clicker = 0
	Gui, Destroy
	Gui, Show, W1280 H720, | GodLikeSkript |  ;menu name <3 GodLikeSkript By Weke_exe <3 | <3 LGND <3	
	Gui, Color, c282828, Verdana ;colors
	Gui, Font, f2f2f2, Verdana ;colors
	gui, add, text, Center x640 y459, %donators%	
	Gui, Add, Picture, X0 Y0 w1280 h720,%a_workingdir%\menu.jpg ;background
	Gui, Add, Picture, X25 Y23 gMenu633button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y121 gMenu533button,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y219 gMenulisciebutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y317 gMenuclickerbutton,%a_workingdir%\menu633button.png ;background	
	Gui, Add, Picture, X25 Y415 gMenubutton,%a_workingdir%\menu633button.png ;background
	Gui, Add, Picture, X25 Y513 gMenudiscordbutton,%a_workingdir%\menu633button.png ;background
	Menu, Tray, noStandard
	Menu, Tray, Add
	Menu, Tray, Add, Wylacz!, ExitApptray
	Menu, Tray, Add, Discord, Discord 
	Menu, Tray, Add
	Menu, Tray, Click, 1
	Menu, Tray, Tip, GodLikeSkript
	FileDelete %A_WorkingDir%\Weke Options\donators.html
	FileRemoveDir, %A_WorkingDir%\Weke Options
	return	
}

Menudiscordbutton:
{
	discordpage = https://discord.gg/7sGYj9
	Run, chrome.exe %discordpage%
	return
}

;--------------------------------------------------
Reloaduj:
{
	Reload
	return
}

	
Load:
{
	Msgbox, Nie Działa!
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633 ;------------633--------
	if 1 = 1
	{
		kilofszesc = 1
		kilofpiec = 0
		GuiControl, , RadioGroup1, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633repair ;repair
	if 1 = 1
	{
		kilofszescrepair = 1
		kilofpiecrepair = 0
		GuiControl, , RadioGroup3, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633naprawkilof ;naprawkilof
	if 1 = 1
	{
		kilofszescnaprawkilof = 1
		kilofpiecnaprawkilof = 0
		GuiControl, , RadioGroup5, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633cx ;cx
	if 1 = 1
	{
		kilofszesccx = 1
		kilofpieccx = 0
		GuiControl, , RadioGroup7, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633supercx ;supercx
	if 1 = 1
	{
		kilofszescsupercx = 1
		kilofpiecsupercx = 0
		GuiControl, , RadioGroup11, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633lewoprawoprzodtyl ;lewoprawoprzodtyl
	if 1 = 1
	{
		kilofszesclewoprawo = 0
		kilofszesclewoprawoprzodtyl = 1
		GuiControl, , RadioGroup10, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633lewoprawo ;lewoprawo
	if 1 = 1
	{
		kilofszesclewoprawo = 1
		kilofszesclewoprawoprzodtyl = 0
		GuiControl, , RadioGroup9, 1
		
	}	
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633inventory ;inventory
	if 1 = 1
	{
		kilofszescinventory = 1
		kilofpiecinventory = 0
		GuiControl, , RadioGroup13, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633jedzenie ;jedzenie
	if 1 = 1
	{
		kilofszesceat = 1
		kilofpieceat = 0
		GuiControl, , RadioGroup15, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533 ;-----------533------------
	if 1 = 1
	{
		kilofszesc = 0
		kilofpiec = 1
		GuiControl, , RadioGroup2, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533repair ;repair
	if 1 = 1
	{
		kilofszescrepair = 0
		kilofpiecrepair = 1
		GuiControl, , RadioGroup4, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533naprawkilof ;naprawkilof
	if 1 = 1
	{
		kilofszescnaprawkilof = 0
		kilofpiecnaprawkilof = 1
		GuiControl, , RadioGroup6, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533cx ;cx
	if 1 = 1
	{
		kilofszesccx = 0
		kilofpieccx = 1
		GuiControl, , RadioGroup8, 1
	}	
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533supercx ;supercx
	if 1 = 1
	{
		kilofszescsupercx = 0
		kilofpiecsupercx = 1
		GuiControl, , RadioGroup12, 1
		
	}
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533shift ;shift
	if 1 = 1
	{
		kilofpiecshift = 1
		GuiControl, , RadioGroup17, 1
		
	}	
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533inventory ;inventory
	if 1 = 1
	{
		kilofszescinventory = 0
		kilofpiecinventory = 1
		GuiControl, , RadioGroup14, 1
		
	}	
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533jedzenie ;jedzenie
	if 1 = 1
	{
		kilofszesceat = 0
		kilofpieceat = 1
		GuiControl, , RadioGroup16, 1
	}	
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda1
	if 1 = 1
	{
		dodatkowakomenda = 1
		dodatkowakomendasave1 = 1
		GuiControl, , RadioGroup18, 1
		Iniread, Komendy, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda1text
		GuiControl,,textToUpdate18,%Komendy%
	}	
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda2
	if 1 = 1
	{
		dodatkowakomenda2 = 1
		dodatkowakomendasave2 = 1
		GuiControl, , RadioGroup19, 1
		Iniread, Komendy2, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda2text
		GuiControl,,textToUpdate19,%Komendy2%
	}		
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda3
	if 1 = 1
	{
		dodatkowakomenda3 = 1
		dodatkowakomendasave3 = 1
		GuiControl, , RadioGroup20, 1
		Iniread, Komendy3, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda3text
		GuiControl,,textToUpdate20,%Komendy3%
	}	
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda4
	if 1 = 1
	{
		dodatkowakomenda4 = 1
		dodatkowakomendasave4 = 1
		GuiControl, , RadioGroup21, 1
		Iniread, Komendy4, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda4text
		GuiControl,,textToUpdate21,%Komendy4%
	}	
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda5
	if 1 = 1
	{
		dodatkowakomenda5 = 1
		dodatkowakomendasave5 = 1
		GuiControl, , RadioGroup22, 1
		Iniread, Komendy5, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda5text
		GuiControl,,textToUpdate22,%Komendy5%
	}	
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda6
	if 1 = 1
	{
		dodatkowakomenda6 = 1
		dodatkowakomendasave6 = 1
		GuiControl, , RadioGroup23, 1
		Iniread, Komendy6, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda6text
		GuiControl,,textToUpdate23,%Komendy6%
	}	
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda7
	if 1 = 1
	{
		dodatkowakomenda7 = 1
		dodatkowakomendasave7 = 1
		GuiControl, , RadioGroup24, 1
		Iniread, Komendy7, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda7text
		GuiControl,,textToUpdate24,%Komendy7%
	}	
	iniread, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda8
	if 1 = 1
	{
		dodatkowakomenda8 = 1
		dodatkowakomendasave8 = 1
		GuiControl, , RadioGroup25, 1
		Iniread, Komendy8, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda8text
		GuiControl,,textToUpdate25,%Komendy8%
	}	
	;Iniread, naKtorymSlocieMaszKilof, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, kilof ;--------------Keybinds------------------
	;Iniread, naKtorymSlocieMaszJedzenie, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, jedzenie ;--------------Keybinds------------------
	;Iniread, iloscStoniarek, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, iloscStoniarek ;--------------Keybinds------------------
	;Iniread, iloscPrzejsc, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, iloscPrzejsc ;--------------Keybinds------------------
	;Iniread, przyciskDoOtwarciaChatu, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, Chat ;--------------Keybinds------------------
	;Iniread, przyciskDoOtwarciaEq, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, Eq ;--------------Keybinds------------------		
	;GuiControl,, PrzyciskChat, %przyciskDoOtwarciaChatu%
	;GuiControl,, Przyciskeq, %przyciskDoOtwarciaEq%
	;GuiControl,, SlotKilof, %naKtorymSlocieMaszKilof%
	;GuiControl,, StoniarkiIlosc, %iloscStoniarek%
	;GuiControl,, SlotJedzenie, %naKtorymSlocieMaszJedzenie%
	;GuiControl,, Przejscia, %iloscPrzejsc%	
	return
}

Save:
{
	Msgbox, Nie Działa!
	if kilofszesc = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633 ;-----------633-------------
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533 ;-----------533------------
	}
	if kilofpiec = 1
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633 ;-----------633-------------
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533 ;-----------533------------
	}
	if kilofszescrepair = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633repair ;repair
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633naprawkilof ;naprawkilof
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533repair ;repair
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533naprawkilof ;naprawkilof	
	}
	if kilofpiecrepair = 1
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633repair ;repair
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633naprawkilof ;naprawkilof
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533repair ;repair
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533naprawkilof ;naprawkilof	
	}
	if kilofszescnaprawkilof = 1
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633repair ;repair
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633naprawkilof ;naprawkilof
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533repair ;repair
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533naprawkilof ;naprawkilof	
	}
	if kilofpiecnaprawkilof = 1
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633repair ;repair
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633naprawkilof ;naprawkilof
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533repair ;repair
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533naprawkilof ;naprawkilof	
	}
	if kilofszesccx = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633cx ;cx
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633supercx ;supercx
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533cx ;cx
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533supercx ;supercx	
	}
	if kilofszescsupercx = 1
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633cx ;cx
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633supercx ;supercx
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533cx ;cx
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533supercx ;supercx	
	}
	if kilofpieccx = 1
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633cx ;cx
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633supercx ;supercx
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533cx ;cx
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533supercx ;supercx	
	}
	if kilofpiecsupercx = 1
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633cx ;cx
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633supercx ;supercx
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533cx ;cx
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533supercx ;supercx	
	}
	if kilofszesclewoprawo = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633lewoprawo ;lewoprawo
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633lewoprawoprzodtyl ;lewoprawoprzodtyl
	}
	if kilofszesclewoprawoprzodtyl = 1
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633lewoprawo ;lewoprawo
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633lewoprawoprzodtyl ;lewoprawoprzodtyl	
	}
	if kilofpiecinventory = 1
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633inventory ;inventory
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533inventory ;inventory
	}
	if kilofszescinventory = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633inventory ;inventory
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533inventory ;inventory
	}
	if kilofszesceat = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633jedzenie ;jedzenie
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533jedzenie ;jedzenie
	}
	if kilofpieceat = 1
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633jedzenie ;jedzenie
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533jedzenie ;jedzenie
	}
	if kilofpiecshift = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533shift ;shift
	}
	else
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533shift ;shift
	}
	if dodatkowakomenda = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda1 ;--------------Commands------------
		IniWrite, %Komendy%, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda1text ;--------------Commands------------
	}
	else
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda1 ;--------------Commands------------
		IniWrite, -, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda1text ;--------------Commands------------
	}
	if dodatkowakomenda2 = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda2 ;--------------Commands------------
		IniWrite, %Komendy2%, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda2text ;--------------Commands------------
	}
	else
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda2 ;--------------Commands------------
		IniWrite, -, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda2text ;--------------Commands------------
	}
	if dodatkowakomenda3 = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda3 ;--------------Commands------------
		IniWrite, %Komendy3%, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda3text ;--------------Commands------------
	}
	else
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda3 ;--------------Commands------------
		IniWrite, -, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda3text ;--------------Commands------------
	}
	if dodatkowakomenda4 = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda4 ;--------------Commands------------
		IniWrite, %Komendy4%, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda4text ;--------------Commands------------
	}
	else
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda4 ;--------------Commands------------
		IniWrite, -, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda4text ;--------------Commands------------
	}
	if dodatkowakomenda5 = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda5 ;--------------Commands------------
		IniWrite, %Komendy5%, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda5text ;--------------Commands------------
	}
	else
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda5 ;--------------Commands------------
		IniWrite, -, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda5text ;--------------Commands------------
	}
	if dodatkowakomenda6 = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda6 ;--------------Commands------------
		IniWrite, %Komendy6%, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda6text ;--------------Commands------------
	}
	else
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda6 ;--------------Commands------------
		IniWrite, -, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda6text ;--------------Commands------------
	}
	if dodatkowakomenda7 = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda7 ;--------------Commands------------
		IniWrite, %Komendy7%, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda7text ;--------------Commands------------
	}
	else
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda8 ;--------------Commands------------
		IniWrite, -, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda8text ;--------------Commands------------
	}
	if dodatkowakomenda8 = 1
	{
		IniWrite, 1, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda8 ;--------------Commands------------
		IniWrite, %Komendy8%, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda8text ;--------------Commands------------
	}
	else
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda8 ;--------------Commands------------
		IniWrite, -, %a_workingdir%\GodLikeSkript\Options.ini, cmds, komenda8text ;--------------Commands------------
	} ;---------------------------------------------else---------------------------------
	if kilofszesc = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633 ;-----------633-------------
	}
	if kilofpiec = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533 ;-----------533------------
	}
	if kilofszescrepair = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633repair ;repair	
	}
	if kilofpiecrepair = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533repair ;repair
	}
	if kilofszescnaprawkilof = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633naprawkilof ;naprawkilof
	}
	if kilofpiecnaprawkilof = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533naprawkilof ;naprawkilof	
	}
	if kilofszesccx = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633cx ;cx	
	}
	if kilofszescsupercx = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633supercx ;supercx
	}
	if kilofpieccx = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533cx ;cx
	}
	if kilofpiecsupercx = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533supercx ;supercx	
	}
	if kilofszesclewoprawo = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633lewoprawo ;lewoprawo
	}
	if kilofszesclewoprawoprzodtyl = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633lewoprawoprzodtyl ;lewoprawoprzodtyl	
	}
	if kilofpiecinventory = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533inventory ;inventory
	}
	if kilofszescinventory = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633inventory ;inventory
	}
	if kilofszesceat = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 633, 633jedzenie ;jedzenie
	}
	if kilofpieceat = 0
	{
		IniWrite, 0, %a_workingdir%\GodLikeSkript\Options.ini, 533, 533jedzenie ;jedzenie
	}
	;GuiControlGet, przyciskDoOtwarciaChatu,, PrzyciskChat
	;GuiControlGet, przyciskDoOtwarciaEq,, Przyciskeq
	;GuiControlGet, naKtorymSlocieMaszKilof,, SlotKilof
	;GuiControlGet, iloscStoniarek,, StoniarkiIlosc
	;GuiControlGet, naKtorymSlocieMaszJedzenie,, SlotJedzenie
	;GuiControlGet, iloscPrzejsc,, Przejscia		
	;przyciskDoOtwarciaChatudone = %przyciskDoOtwarciaChatu%
	;przyciskDoOtwarciaEqdone = %przyciskDoOtwarciaEq%
	;naKtorymSlocieMaszKilofdone = %naKtorymSlocieMaszKilof%
	;iloscStoniarekdone = %iloscStoniarek%
	;naKtorymSlocieMaszJedzeniedone = %naKtorymSlocieMaszJedzenie%
	;iloscPrzejscdone = %iloscPrzejsc%
	;IniWrite, %naKtorymSlocieMaszKilofdone%, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, kilof ;--------------Keybinds------------------
	;IniWrite, %naKtorymSlocieMaszJedzeniedone%, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, jedzenie ;--------------Keybinds------------------
	;IniWrite, %iloscStoniarekdone%, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, iloscStoniarek ;--------------Keybinds------------------
	;IniWrite, %iloscPrzejscdone%, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, iloscPrzejsc ;--------------Keybinds------------------
	;IniWrite, %przyciskDoOtwarciaChatudone%, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, Chat ;--------------Keybinds------------------
	;IniWrite, %przyciskDoOtwarciaEqdone%, %a_workingdir%\GodLikeSkript\Options.ini, Keybinds, Eq ;--------------Keybinds------------------	
	return
}
;-------------------------------Radio-Buttons------------------------------------	
Check:
Gui, Submit, NoHide
if RadioGroup3 = 1
{
	kilofszescrepair = 1
}
if RadioGroup3 = 0
{
	kilofszescrepair = 0
}
if RadioGroup4 = 1
{
	kilofpiecrepair = 1
}
if RadioGroup4 = 0
{
	kilofpiecrepair = 0
}
if RadioGroup5 = 1
{
	kilofszescnaprawkilof = 1
}
if RadioGroup5 = 0
{
	kilofszescnaprawkilof = 0
}
if RadioGroup6 = 1
{
	kilofpiecnaprawkilof = 1	
}
if RadioGroup6 = 0
{
	kilofpiecnaprawkilof = 0	
}
if RadioGroup7 = 1
{
	kilofszesccx = 1
}
if RadioGroup7 = 0
{
	kilofszesccx = 0
}
if RadioGroup8 = 1
{
	kilofpieccx = 1
}
if RadioGroup8 = 0
{
	kilofpieccx = 0
}
if RadioGroup9 = 1
{
	kilofszesclewoprawo = 1
}
if RadioGroup9 = 0
{
	kilofszesclewoprawo = 0
}
if RadioGroup10 = 1
{
	kilofszesclewoprawoprzodtyl = 1
}
if RadioGroup10 = 0
{
	kilofszesclewoprawoprzodtyl = 0
}
if RadioGroup11 = 1
{
	kilofszescsupercx = 1
}
if RadioGroup11 = 0
{
	kilofszescsupercx = 0
}
if RadioGroup12 = 1
{
	kilofpiecsupercx = 1
}
if RadioGroup12 = 0
{
	kilofpiecsupercx = 0
}
if RadioGroup13 = 1
{
	kilofszescinventory = 1
}
if RadioGroup13 = 0
{
	kilofszescinventory = 0
}
if RadioGroup14 = 1
{
	kilofpiecinventory = 1
}
if RadioGroup14 = 0
{
	kilofpiecinventory = 0
}
if RadioGroup15 = 1
{
	kilofszesceat = 1
}
if RadioGroup15 = 0
{
	kilofszesceat = 0
}
if RadioGroup16 = 1
{
	kilofpieceat = 1
}
if RadioGroup16 = 0
{
	kilofpieceat = 0
}
if RadioGroup17 = 1
{
	kilofpiecshift = 1
}
if RadioGroup17 = 0
{
	kilofpiecshift = 0
}
if LiscieRepair = 1
{
	LiscieRepairNow = 1
}
if LiscieRepair = 0
{
	LiscieRepairNow = 0
}
if (RadioGroup18){
	if dodatkowakomendadone = 0
	{
		if dodatkowakomendasave1 = 0
		{
			InputBox, Komendy, Komendy, Dodatkowa Komenda!, ,200, 130
			dodatkowakomenda = 1
			dodatkowakomendadone = 1
			GuiControl,,textToUpdate18,%Komendy%
		}
		return
	}
} ; copy this add new readiogroup and photoshop new layer etc etc
if (RadioGroup19){
	if dodatkowakomendadone2 = 0
	{
		if dodatkowakomendasave2 = 0
		{	
			InputBox, Komendy2, Komendy2, Dodatkowa Komenda!, ,200, 130
			dodatkowakomenda2 = 1
			dodatkowakomendadone2 = 1
			GuiControl,,textToUpdate19,%Komendy2%
		}
		return
	}
} ; copy this add new readiogroup and photoshop new layer etc etc
if (RadioGroup20){
	if dodatkowakomendadone3 = 0
	{
		if dodatkowakomendasave3 = 0
		{
			InputBox, Komendy3, Komendy3, Dodatkowa Komenda!, ,200, 130
			dodatkowakomenda3 = 1
			dodatkowakomendadone3 = 1
			GuiControl,,textToUpdate20,%Komendy3%
		}
		return
	}
} ; copy this add new readiogroup and photoshop new layer etc etc
if (RadioGroup21){
	if dodatkowakomendadone4 = 0
	{
		if dodatkowakomendasave4 = 0
		{
			InputBox, Komendy4, Komendy4, Dodatkowa Komenda!, ,200, 130
			dodatkowakomenda4 = 1
			dodatkowakomendadone4 = 1
			GuiControl,,textToUpdate21,%Komendy4%
		}
		return
	}
} ; copy this add new readiogroup and photoshop new layer etc etc
if (RadioGroup22){
	if dodatkowakomendadone5 = 0
	{
		if dodatkowakomendasave5 = 0
		{
			InputBox, Komendy5, Komendy5, Dodatkowa Komenda!, ,200, 130
			dodatkowakomenda5 = 1
			dodatkowakomendadone5 = 1
			GuiControl,,textToUpdate22,%Komendy5%
		}
		return
	}
} ; copy this add new readiogroup and photoshop new layer etc etc
if (RadioGroup23){
	if dodatkowakomendadone6 = 0
	{
		if dodatkowakomendasave6 = 0
		{
			InputBox, Komendy6, Komendy6, Dodatkowa Komenda!, ,200, 130
			dodatkowakomenda6 = 1
			dodatkowakomendadone6 = 1
			GuiControl,,textToUpdate23,%Komendy6%
		}
		return
	}
} ; copy this add new readiogroup and photoshop new layer etc etc
if (RadioGroup24){
	if dodatkowakomendadone7 = 0
	{
		if dodatkowakomendasave7 = 0
		{	
			InputBox, Komendy7, Komendy7, Dodatkowa Komenda!, ,200, 130
			dodatkowakomenda7 = 1
			dodatkowakomendadone7 = 1
			GuiControl,,textToUpdate24,%Komendy7%
		}
		return
	}
} ; copy this add new readiogroup and photoshop new layer etc etc
if (RadioGroup25){
	if dodatkowakomendadone8 = 0
	{
		if dodatkowakomendasave8 = 0
		{
			InputBox, Komendy8, Komendy8, Dodatkowa Komenda!, ,200, 130
			dodatkowakomenda8 = 1
			dodatkowakomendadone8 = 1
			GuiControl,,textToUpdate25,%Komendy8%
		}
		return
	}
Return
}


;-----------------------------------------Button---------------------------------------

F8::
{
;---------------------------------------Minecraft-Window-1280x720
WinMove, Minecraft, , , , 1280, 720
GuiControlGet, przyciskDoOtwarciaChatu,, PrzyciskChat
if przyciskDoOtwarciaChatu = " "
{
	msgbox, BŁĄD [1] - Nie Ustawiono Przycisku Chatu!
	sleep 5000
	Exitapp
}
GuiControlGet, przyciskDoOtwarciaEq,, Przyciskeq
if przyciskDoOtwarciaEq = " "
{
	msgbox, BŁĄD [2] - Nie Ustawiono Przycisku EQ!
	sleep 5000
	Exitapp
}
GuiControlGet, naKtorymSlocieMaszKilof,, SlotKilof
if naKtorymSlocieMaszKilof = " "
{
	msgbox, BŁĄD [3] - Nie Ustawiono Przycisku Kilofa!
	sleep 5000
	Exitapp
}
GuiControlGet, iloscStoniarek,, StoniarkiIlosc
if iloscStoniarek = " "
{
	msgbox, BŁĄD [4] - Nie Ustawiono Ilosci Stoniarek!
	sleep 5000
	Exitapp
}
GuiControlGet, naKtorymSlocieMaszJedzenie,, SlotJedzenie
if naKtorymSlocieMaszJedzenie = " "
{
	msgbox, BŁĄD [4] - Nie Ustawiono Przycisku Jedzenia!
	sleep 5000
	Exitapp
}
GuiControlGet, iloscPrzejsc,, Przejscia
if iloscPrzejsc = " "
{
	msgbox, BŁĄD [4] - Nie ilości Przejść!
	sleep 5000
	Exitapp
}
	;---------------------------------------loop-everything
	loop
	{
		;---------------------------------------633
		if kilofszesc = 1
		{
			;---------------------------------------Rejoin
			Rejoin()
			;---------------------------------------Eat
			if kilofszesceat = 1
			{
				Eat(2)
			}
			;---------------------------------------Inventory
			if kilofszescinventory = 1
			{
				Inv()			
			}
			;---------------------------------------MsgChat
			PisanieNaChacie()
			;---------------------------------------CX
			if kilofszesccx = 1
			{
				Command("cx")
				Command("cx")
			}
			;---------------------------------------SuperCX
			if kilofszescsupercx = 1
			{
				;---------------------------------------SuperCX-Lewoprawoprzodtyl
				if kilofszesclewoprawoprzodtyl = 1
				{
					cxszesclewoprawogoradol(2)
				}
				;---------------------------------------SuperCX-Lewoprawo
				if kilofszesclewoprawo = 1
				{
					cxszesclewoprawo(2)
				}				
			}
			;---------------------------------------Repair
			if kilofszescrepair = 1
			{
				Command("repair")
			}
			;---------------------------------------naprawkilof
			if kilofszescnaprawkilof = 1
			{
				Command("naprawkilof")
			}
			;---------------------------------------Dodatkowa-Komenda-#1
			if dodatkowakomenda = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 200
				send /%Komendy%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#2
			if dodatkowakomenda2 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 200
				send /%Komendy2%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#3
			if dodatkowakomenda3 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 200
				send /%Komendy3%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#4
			if dodatkowakomenda4 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 200
				send /%Komendy4%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#5
			if dodatkowakomenda5 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 200
				send /%Komendy5%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#6
			if dodatkowakomenda6 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 200
				send /%Komendy6%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#7
			if dodatkowakomenda7 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 200
				send /%Komendy7%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#8
			if dodatkowakomenda8 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 200
				send /%Komendy8%
				sleep 200
				sendinput {enter}
				sleep 200
			}	
			;---------------------------------------633/LPM/LewoPrawo
			if kilofszesclewoprawo = 1
			{
				Lpm633lewoprawo(1)
			}
			;---------------------------------------633/LPM/LewoPrawoPrzodTyl
			if kilofszesclewoprawoprzodtyl = 1
			{
				Lpm633lewoprawoprzodtyl(1)
			}
			if kilofszesclewoprawoprzodtyl = 0
			{
				;---------------------------------------If Nothing
				if kilofszesclewoprawo = 0
				{
					ExitApp
				}
			}
		}
		;---------------------------------------533
		if kilofpiec = 1
		{
			;---------------------------------------Rejoin
			Rejoin()
			;---------------------------------------Eat
			if kilofpieceat = 1
			{
				Eat(2)
			}
			;---------------------------------------Inventory
			if kilofpiecinventory = 1
			{
				Inv()			
			}
			;---------------------------------------MsgChat
			PisanieNaChacie()
			;---------------------------------------CX
			if kilofpieccx = 1
			{
				Command("cx")
				Command("cx")
			}
			;---------------------------------------SuperCX
			if kilofpiecsupercx = 1
			{
				cxpiec(2)
			}			
			;---------------------------------------Repair
			if kilofpiecrepair = 1
			{
				Command("repair")
			}
			;---------------------------------------Naprawkilof
			if kilofpiecnaprawkilof = 1
			{
				Command("naprawkilof")
			}
			;---------------------------------------Dodatkowa-Komenda-#1
			if dodatkowakomenda = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 4000
				send /%Komendy%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#2
			if dodatkowakomenda2 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 4000
				send /%Komendy2%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#3
			if dodatkowakomenda3 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 4000
				send /%Komendy3%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#4
			if dodatkowakomenda4 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 4000
				send /%Komendy4%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#5
			if dodatkowakomenda5 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 4000
				send /%Komendy5%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#6
			if dodatkowakomenda6 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 4000
				send /%Komendy6%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#7
			if dodatkowakomenda7 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 4000
				send /%Komendy7%
				sleep 200
				sendinput {enter}
				sleep 200
			}
			;---------------------------------------Dodatkowa-Komenda-#8
			if dodatkowakomenda8 = 1
			{
				sleep 200
				sendinput {%przyciskDoOtwarciaChatu%}
				sleep 4000
				send /%Komendy8%
				sleep 200
				sendinput {enter}
				sleep 200
			}	
			;---------------------------------------533/LPM/Shift
			if kilofpiecshift = 1
			{
				Lpm533shift(1)
			}
			;---------------------------------------533/LPM
			else
			{
				Lpm533(1)
			}
		}
		if liscie = 1
		{
			lisciedone()
		}
	}
}



;------------------------------------Turn Off----------------------------------------
F9::
{
	sendInput {Shift down}
	sendInput {Shift up}
	sendInput {LButton down}
	sendInput {LButton up}
	sendInput {RButton down}
	sendInput {RButton up}
	sendInput {a down}
	sendInput {a up}
	sendInput {w down}
	sendInput {w up}
	sendInput {d down}
	sendInput {d up}
	sendInput {s down}
	sendInput {s up}
	sleep 200
	reload
	return
}
;------------------------------------Cmds----------------------------------------
Command(string)
{
	GuiControlGet, przyciskDoOtwarciaChatu,, PrzyciskChat
	sleep 3500
	sendinput {%przyciskDoOtwarciaChatu%}
	sleep 200
	send /%string%
	sleep 200
	sendinput {enter}
	sleep 200
}

;------------------------------------Rejoin----------------------------------------
Rejoin()
{
	GuiControlGet, przyciskDoOtwarciaChatu,, PrzyciskChat
	SendInput {%przyciskDoOtwarciaChatu%}
	sleep 100
	Mousemove 500, 420
	SendInput {LButton}
	sleep 500
	SendInput {Enter}
	sleep 4555
}

;------------------------------------MsgChat----------------------------------------
PisanieNaChacie()
{
	GuiControlGet, przyciskDoOtwarciaChatu,, PrzyciskChat
	sleep 200
;	sendinput {%przyciskDoOtwarciaChatu%}
;	sleep 200
;	send <3 GodLikeSkript <3 | <3 LGND <3 | Weke#7742
;	sleep 300
;	sendinput {enter}
;	sleep 5000
	sendinput {%przyciskDoOtwarciaChatu%}
	sleep 200
	send /msg zawleczka <3 Kopanko <3
	sleep 200
	sendinput {enter}
	sleep 200
}

;------------------------------------633/LewoPrawoPrzodTyl/LPM----------------------------------------
Lpm633lewoprawoprzodtyl(int)
{
	loop, %int%
	{
		sendinput {LButton down}
		GuiControlGet, iloscPrzejsc,, Przejscia
		Move633lewoprawoprzodtyl(iloscPrzejsc)
		sendinput {LButton up} 
	}
}

;------------------------------------633/LewoPrawo/LPM----------------------------------------
Lpm633lewoprawo(int)
{
	loop, %int%
	{
		sendinput {LButton down}
		GuiControlGet, iloscPrzejsc,, Przejscia
		Move633lewoprawo(iloscPrzejsc)
		sendinput {LButton up} 
	}
}

;------------------------------------633/LewoPrawo/MOVE----------------------------------------
Move633lewoprawo(int)
{
	loop, %int%
	{
		GuiControlGet, iloscStoniarek,, StoniarkiIlosc
		sendinput {a down}
		sleep 232.5*iloscStoniarek
		sendinput {a up}
		sendinput {d down}
		sleep 232.5*iloscStoniarek
		sendinput {d up}
	}	
}

;------------------------------------633/CX-CHECK----------------------------------------
cxszesccheck(int)
{
	if kilofszesclewoprawoprzodtyl = 1
	{
		cxszesclewoprawogoradol(%int%)
	}
	if kilofszesclewoprawo = 1
	{
		cxszesclewoprawo(%int%) 
	}
}

;------------------------------------633/LewoPrawoPrzodTyl/Cx - Final---------------------------------
cxszesclewoprawogoradol(int)
{
	loop, %int%
	{
		GuiControlGet, iloscStoniarek,, StoniarkiIlosc
		Command("cx")
		Command("cx")
		sendinput {a down}
		sleep 232.5*iloscStoniarek
		sendinput {a up}
		sendinput {w down}
		sleep 232.5*2
		sendinput {w up}
		sendinput {d down}
		sleep 232.5*iloscStoniarek
		sendinput {d up}
		sendinput {s down}
		sleep 232.5*2
		sendinput {s up}
		Command("cx")
		Command("cx")
	}	
}

;------------------------------------633/LewoPrawo/Cx - Final---------------------------------
cxszesclewoprawo(int)
{
	loop, %int%
	{
		GuiControlGet, iloscStoniarek,, StoniarkiIlosc
		Command("cx")
		Command("cx")
		sendinput {a down}
		sleep 232.5*iloscStoniarek
		sendinput {a up}
		sendinput {d down}
		sleep 232.5*iloscStoniarek
		sendinput {d up}
		Command("cx")
		Command("cx")
	}	
}

;------------------------------------533/CX-----------------------------
cxpiec(int)
{
	loop, %int%
	{
		Command("cx")
		Command("cx")
	}	
}

;------------------------------------633/LewoPrawoPrzodTyl/MOVE-----------------------------
Move633lewoprawoprzodtyl(int)
{
	loop, %int%
	{
		GuiControlGet, iloscStoniarek,, StoniarkiIlosc
		sendinput {a down}
		sleep 232.5*iloscStoniarek
		sendinput {a up}
		sendinput {w down}
		sleep 232.5*2
		sendinput {w up}
		sendinput {d down}
		sleep 232.5*iloscStoniarek
		sendinput {d up}
		sendinput {s down}
		sleep 232.5*2
		sendinput {s up}
	}	
}

;------------------------------------533/LPM/Shift-----------------------------
Lpm533shift(int)
{
	loop, %int%
	{
		sendinput {LButton down}
		send {Shift down}
		sleep 1500000
		send {Shift up}
		sendinput {LButton up} 
	}
}

;------------------------------------533/LPM-----------------------------
Lpm533(int)
{
	loop, %int%
	{
		sendinput {LButton down}
		sleep 1500000
		sendinput {LButton up} 
	}
}



;------------------------------------Inventory-----------------------------
Inv(){
x := 503
y := 385
l := 0
i := 0
	GuiControlGet, przyciskDoOtwarciaEq,, Przyciskeq
	SendInput {%przyciskDoOtwarciaEq%}
	loop, 27{  ;TODO liczba paskow
		if(i = 9){
			i := 0
			l++
		}
		sleep 200
		MouseMove, x +36*i, y + 35*l
		DropGold()
		i++
	}
	SendInput {e}
	sleep 100
}

;------------------------------------GoldDrop-----------------------------
dropGold(){
goldcolor := 0x808080
color:= getColor()
if(color = goldcolor){
		sendInput, {LCtrl down}{Q}
		sleep 100
		SendInput {LCtrl up}
	}
}
getColor(){
	MouseGetPos, X,Y
	PixelGetColor, color, %X%, %Y%
	return color
}


;------------------------------------Eat-----------------------------
Eat(int)
{
	loop, %int%
	{
		GuiControlGet, naKtorymSlocieMaszJedzenie,, SlotJedzenie
		GuiControlGet, naKtorymSlocieMaszKilof,, SlotKilof
		sleep 200
		send {%naKtorymSlocieMaszJedzenie%}
		sleep 300
		sendinput {RButton down}
		sleep 2050
		sendinput {RButton up}
		sleep 300
		send {%naKtorymSlocieMaszKilof%}
		sleep 250
	}	
}


lisciedone()
{
	loop, 100
	{
		sendinput, {2}
		sleep 50
		sendinput, {RButton}
		sleep 50
		sendinput, {RButton}
		sleep 50
		sendinput, {1}
		sleep 50
		sendinput, {LButton}
		sleep 50
		sendinput, {LButton}
		sleep 50
	}
	sendinput, {1}
	sleep 50
	sendinput, {T}
	sleep 200
	sendinput, /repair
	sleep 200
	sendinput, {ENTER}
	sleep 50
	sendinput, {2}	
	sleep 50
	sendinput, {T}	
	sleep 200
	send /msg zawleczka <3 Liscie <3
	sleep 300
	sendinput {enter}	
}










