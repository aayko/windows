; Toggle the Windows 11 taskbar with Ctrl+Shift+Alt+T

; Set the key combination to trigger the taskbar toggle
^+!t::ToggleTaskbar()

; Function to toggle the taskbar
ToggleTaskbar() {
    ; Check if the taskbar is currently hidden
    if (WinExist("ahk_class Shell_TrayWnd")) {
        ; If it's visible, hide the taskbar
        WinHide, ahk_class Shell_TrayWnd
        WinHide, ahk_class Shell_SecondaryTrayWnd
    } else {
        ; If it's hidden, show the taskbar
        WinShow, ahk_class Shell_TrayWnd
        WinShow, ahk_class Shell_SecondaryTrayWnd
    }
}

; Hide the taskbar when the script is initially run
WinHide, ahk_class Shell_TrayWnd
WinHide, ahk_class Shell_SecondaryTrayWnd