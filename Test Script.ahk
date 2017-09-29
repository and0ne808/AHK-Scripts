#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ; IfWinActive must contain the string anywhere in the window title
#SingleInstance force ; Only one instance of this script can run at a time

; STARTUP TRAY TIP -----------------------------
Menu Tray, Icon
TrayTip Success!, Your Macro Script is Running!
Sleep 3000
TrayTip
; END STARTUP TRAY TIP ---------------------------

;If SciTE4AutoHotkey is active, The F2 key saves, runs the script, and confirms.
#IfWinActive SciTE4AutoHotkey
f2::
	Send, {Control down}s{Control up}
	Sleep, 500
	Send, {F5}
	Sleep, 300
	;The process should terminate and reload before it reaches this point.
	MsgBox, ERROR The Save and Reload function failed.
Return
#IfWinActive


:*:emailsig::
	Send, Andrew Day `n
	Send, Software Engineer `n
	Send, Revature Technology Solutions `n
	Send, Andrew@AndrewDayOnline.com `n
	Send, 719-355-9602
Return	

:*:htmlnew::
Send,<{!}DOCTYPE html>`r`r
Send,<html>`r`r 
Send,<head>`r
Send,<title>Coming Soon</title>`r
Send,</head>`r`r
Send,<body>`r
Send,<h1>Under Construction</h1>`r
Send,<p>This page is undergoing maintenance. Please check back later.</p>`r
Send,</body>`r`r
Send,</html>
Return
