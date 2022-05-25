#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
FileDelete, %A_ScriptDir%/location.txt


#IfWinActive ahk_exe clarify.exe
Control::
MouseGetPos, xpos, ypos
LocString := "De x-coordinaat is: " xpos " De y coordinaat is: " ypos
FileAppend, `n%LocString%, %A_ScriptDir%/location.txt
return
