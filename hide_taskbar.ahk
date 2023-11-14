; Set up the script to run at startup
#NoTrayIcon
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; Run once at script startup
OnStartup:
    WinSet, Transparent, 0, ahk_class Shell_TrayWnd
    Return

; toggle taskbar on and off using hot key
; Control + Shift + Alt + T

^+!t::            ; ToggleTaskbar()
If Transparent := !Transparent
{
    WinSet, Transparent, 0, ahk_class Shell_TrayWnd
}
Else
{
    WinSet, Transparent, 255, ahk_class Shell_TrayWnd
    WinSet, TransColor, OFF, ahk_class Shell_TrayWnd
    WinSet, Transparent, OFF, ahk_class Shell_TrayWnd
    WinSet, Redraw,, ahk_class Shell_TrayWnd
}
Return

