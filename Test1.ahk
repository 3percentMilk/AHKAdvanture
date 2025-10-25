#Requires AutoHotkey v2.0
#z::Run "https://www.autohotkey.com"  ; Win+Z
CoordMode "Mouse", "Window"

; How long to hold each point (ms)
holdTime := 500  ; 0.5 seconds
walkTime:= 500  ; 0.5 seconds
spellTime := 100 ; .1 second between cast
pickTime := 50 ; .05 between pick ups


;List of coord variables

;Movement ------

;Up key "Up"
Upx := 180, Upy := 471

;left key "Left"
Leftx := 117, Lefty := 571

;down key "Down"
Downx := 185, Downy := 648

;right key "Right"
Rightx := 271, Righty := 555

;Attack and Ability -----

;Auto Attack "Space"
AAx := 1168, AAy := 638

;Ability 1 "q"
A1x := 983, A1y := 690

;Ability 2 "w"
A2x := 971, A2y := 570

;Ability 3 "e"
A3x := 1023, A3y := 461

;Ability 4 "r"
A4x := 1113, A4y := 375

;Ability 5 "t"
A5x := 1227, A5y := 332

; Pick up and Misc------

;Inventory "i"
Ix := 1150, Iy := 83

;pickup "p"
px := 1213, py := 500

;2158, 332
; Start script with Ctrl+1
^1::{
    Loop 100  ; repeat the box
    {

        Loop 23{
            ;move down
            MouseMove Downx, Downy
            Click "Down"
            Sleep holdTime
            Click "Up"
            Sleep holdTime

        }
        
       Loop 23{     
            MouseMove Upx, Upy
            Click "Down"
            Sleep holdTime
            Click "Up"
            Sleep holdTime
       }
    }
}

;Start script with Ctrl+2
^2::{
        ;Beserk for crystals
        MouseMove A5x, A5y
        Click "Down"
        Sleep spellTime
        Click "Up"
        Sleep holdTime

        ;Autoattack
        MouseMove AAx, AAy
        Click 
        CLick

        ;Crit
        MouseMove A1x, A1y
        Loop 4{
            Click
        }
        Sleep holdTime
        Sleep holdTime
        Sleep holdTime

        ;Sweep
        MouseMove A2x, A2y
        Loop 4{
            Click
            Sleep spellTime
        }

        ;WS
        MouseMove A3x, A3y
        Click 
        Click
        Sleep spellTime

        ;Slam
        Loop 75{
            MouseMove A4x, A4y
            Click
            Sleep spellTime
        }

}

; Kill switch
^q::ExitApp



