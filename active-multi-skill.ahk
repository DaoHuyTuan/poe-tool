#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%

#IfWinActive, Path of Exile

$t::
Send {r down}
Sleep 200
Send {r up}
TrayTip, Script, R triggered, 1, 1
Sleep 200

Send {e down}
Sleep 300  ; Extended hold time for E
Send {e up}
TrayTip, Script, E triggered, 1, 1
Sleep 200

Send {w down}
Sleep 300  ; Extended hold time for first W
Send {w up}
TrayTip, Script, W1 triggered, 1, 1
Sleep 200

Send {q down}
Sleep 200
Send {q up}
TrayTip, Script, Q triggered, 1, 1
Sleep 200

Send {Space down}
Sleep 200
Send {Space up}
TrayTip, Script, Space triggered, 1, 1
Sleep 200

Send {w down}
Sleep 300  ; Extended hold time for second W
Send {w up}
TrayTip, Script, W2 triggered, 1, 1
return

; Debug W key only
F3::
Send {w down}
Sleep 300
Send {w up}
TrayTip, Script, Debug W triggered, 1, 1
return

F2::
WinGetActiveTitle, ActiveWindow
MsgBox, The active window is: %ActiveWindow%
return

^Esc::
TrayTip, Script, Shutting down, 1, 1
Sleep 500
ExitApp
return

#Persistent
TrayTip, Script, Script loaded successfully, 2, 1
return