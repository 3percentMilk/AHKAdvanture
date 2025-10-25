#Requires AutoHotkey v2.0
CoordMode "Mouse", "Window"

; How long to hold each point (ms)
holdTime := 500  ; 0.5 seconds

; Mouse coordinates relative to the active window
Upx := 180, Upy := 471
Rightx := 271, Righty := 555
Downx := 185, Downy := 648
Leftx := 117, Lefty := 571

; Start script with Ctrl+1
^1::{
    Loop 10  ; repeat the box
    {
        MouseMove Upx, Upy
        Click "Down"
        Sleep holdTime
        Click "Up"
        Sleep holdTime
        
        MouseMove Rightx, Righty
        Click "Down"
        Sleep holdTime
        Click "Up"
        Sleep holdTime
        
        MouseMove Downx, Downy
        Click "Down"
        Sleep holdTime
        Click "Up"
        Sleep holdTime
        
        MouseMove Leftx, Lefty
        Click "Down"
        Sleep holdTime
        Click "Up"
        Sleep holdTime
    }
}

; Kill switch
^q::ExitApp