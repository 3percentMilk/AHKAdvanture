#Requires AutoHotkey v2.0
#z::Run "https://www.autohotkey.com"  ; Win+Z
CoordMode "Mouse", "Window"

; How long to hold each point (ms)
secTime := 1000    ; 1 seconds
halfSecTime := 500 ; .5 seconds
walkTime:= 500      ; 0.5 seconds
spellTime := 200    ; .2 second between cast
slamTime := 100     ; .1 second between slam casts
pickTime := 50      ; .05 between pick ups


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



;Start Script with Ctrl+2
^2::{
    Loop 300 ; repeat the loop 3 times
    {
        ;collects spiders moving down slowly
        Loop 24{
            ;move down
            MouseMove Downx, Downy
            Click "Down"
            Sleep walkTime
            Click "Up"
            Sleep walkTime
        }

        ;Uses Beserk (keep crystals above 5)
        MouseMove A5x, A5y
        Loop 5{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;collect spiders moving upwards
        Loop 25 {
            MouseMove Upx, Upy
            Click "Down"
            Sleep walkTime
            Click "Up"
            Sleep walkTime
        }

        ;Uses Beserk (keep crystals above 5)
        MouseMove A5x, A5y
        Loop 5{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Movedown slightly Down
        MouseMove Downx, Downy
        Click "Down"
        Sleep spellTime
        CLick "Up"

        ;Autoattack
        MouseMove AAx, AAy
        Loop 5{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Crit
        MouseMove A1x, A1y
        Loop 3{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Sweep
        MouseMove A2x, A2y
        Loop 3{
            Click
            Sleep spellTime
        }

        ;WS
        MouseMove A3x, A3y
        Loop 3{
            Click
            Sleep spellTime
        }

        ;Slam
        Loop 60{
            MouseMove A4x, A4y
            Click
            Sleep slamTime
        }
        Sleep halfSecTime

        ;move to the center of loot
        MouseMove Downx, DownY
        Click "Down"
        Sleep spellTime
        Click "Up"

        ;Pickup
        Loop 100{
            MouseMove px, py
            Click
            Sleep pickTime
        }

        sleep halfSecTime


        ;wait for beserk sweep  cd 6 seconds
        ;auto attack for remaining cd to get crystals
        MouseMove AAx, AAy
        Loop 12{
            Click
            Sleep halfSecTime
        }

        ;Slam again to finish off mobs
        ;Uses Beserk (keep crystals above 5)
        MouseMove A5x, A5y
        Loop 5{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Autoattack
        MouseMove AAx, AAy
        Loop 5{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Crit
        MouseMove A1x, A1y
        Loop 3{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Sweep
        MouseMove A2x, A2y
        Loop 3{
            Click
            Sleep spellTime
        }

        ;WS
        MouseMove A3x, A3y
        Loop 3{
            Click
            Sleep spellTime
        }

        ;Slam
        Loop 60{
            MouseMove A4x, A4y
            Click
            Sleep slamTime
        }
        Sleep walkTime

        ;move to the center of loot
        MouseMove Downx, DownY
        Click "Down"
        Sleep walkTime
        Click "Up"

        ;Pickup
        Loop 100{
            MouseMove px, py
            Click
            Sleep pickTime
        }

        Sleep halfSecTime

        ;move back to start position
        MouseMove Upx, Upy
        Click "Down"
        Sleep walkTime
        Click "Up"

        ;Sleep for 2:55 min
        Loop 175{
            ;go down then up 180 times
            MouseMove Downx, Downy
            Click "Down"
            Sleep walkTime
            Click "Up"

            Mouse Move Upx, Upy
            Click "Down"
            Sleep walkTime
            Click "Up"
        }



    }
}

; Kill switch
^q::ExitApp

