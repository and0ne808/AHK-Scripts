#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ; IfWinActive must contain the string anywhere in the window title
#SingleInstance force ; Only one instance of this script can run at a time

:*:emailsig::
	Send, Andrew Day `n
	Send, Software Engineer `n
	Send, Revature Technology Solutions `n
	Send, Andrew@AndrewDayOnline.com `n
	Send, 719-355-9602
Return	

::ftw::Free the whales



::btw::
   MsgBox You typed "btw".
Return

^j::
   MsgBox Wow!
   MsgBox this is
   Run, Notepad.exe
   winactivate, Untitled - Notepad
   WinWaitActive, Untitled - Notepad
   send, 7 lines{!}{enter}
   sendinput, inside the ctrl{+}j hotkey
Return

^n::
	Run Notepad
Return

:*:ftw::Free the whales fool!

;If SciTE4AutoHotkey is active, The F2 key saves, runs the script, and confirms.


;#IfWinActive SciTE4AutoHotkey
f2::
	Send, {Control down}s{Control up}
	Sleep, 300
	Send, {F5}
	Sleep, 300
	;The process should terminate and reload before it reaches this point.
	MsgBox, ERROR The Save and Reload function failed.
		
Return
;#IfWinActive