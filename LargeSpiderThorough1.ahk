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


;start script ctrl + 2
^2::{
    Loop 200{
        ;move down away from edge
        MouseMove Downx, Downy
        Click "Down"
        Sleep secTime
        Click "Up"

        Sleep halfSecTime

        ;15 to left 5 back NOT WORKING

        ;move left towards the pocket
        Loop 17{
            MouseMove Leftx, Lefty
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }

        Loop 7{
            MouseMove Rightx, Righty
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }


        ;move into pocket
        Loop 8{
            MouseMove Downx, Downy
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }

        ;move out of pocket
        Loop 7{
            MouseMove Upx, Upy
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }  

        ;move back to start pos
        Loop 12{
            MouseMove Rightx, Righty
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }
        
        ;move up into from edge
        MouseMove Upx, Upy
        Click "Down"
        Sleep secTime
        Sleep secTime
        Click "Up"

        ;move left into start pos
        Loop 4{
            MouseMove Leftx, Lefty
            Click "Down"
            sleep walkTime
            Click "Up"
            sleep walkTime
        }

        ;now go down and zig zag
        ; down 24, beserk, up 25, beserk, move slightly down

        ; 2 x 6 = 12
        ;3rd time 3 more to the left
        ;4th time the same
        Loop 2{
            ;move 6 down, go 4 right, 8 left, 4 right
            Loop 6{
                ;6 down
                MouseMove Downx, Downy
                Click "Down"
                Sleep halfSecTime
                Click "Up"
                Sleep halfSecTime
            }

            ;4 right
            Loop 4{
                MouseMove Rightx, Righty
                Click "Down"
                Sleep halfSecTime
                Click "Up"
                Sleep halfSecTime
            }

            ;8 left
            Loop 8{
                MouseMove Leftx, Lefty
                Click "Down"
                Sleep halfSecTime
                CLick "Up"
                Sleep halfSecTime
            }

            ;4 right
            Loop 4{
                MouseMove Rightx, Righty
                Click "Down"
                Sleep halfSecTime
                Click "Up"
                Sleep halfSecTime
            }
        }
        ;round 3, 4 right, 11 left, 7 right
        Loop 6{
            ;6 down
            MouseMove Downx, Downy
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }

        ;4 right
        Loop 4{
            MouseMove Rightx, Righty
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }

        ;11 left
        Loop 11{
            MouseMove Leftx, Lefty
            Click "Down"
            Sleep halfSecTime
            CLick "Up"
            Sleep halfSecTime
        }

        ;7 right
        Loop 7{
            MouseMove Rightx, Righty
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }

        ;round 4, 4 right, 8 left, 4 right
        Loop 6{
            ;6 down
            MouseMove Downx, Downy
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }

        ;4 right
        Loop 4{
            MouseMove Rightx, Righty
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }

        ;11 left
        Loop 8{
            MouseMove Leftx, Lefty
            Click "Down"
            Sleep halfSecTime
            CLick "Up"
            Sleep halfSecTime
        }

        ;4 right
        Loop 4{
            MouseMove Rightx, Righty
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }


        ;adjust for offset 2 right
        Loop 2{
            MouseMove Rightx, Righty
            Click "Down"
            Sleep halfSecTime
            Click "Up"
            Sleep halfSecTime
        }

        ;berserk
        MouseMove A5x, A5y
        Loop 5{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;move up 25 then kill mobs 3 sweep then adjust to wall
        MouseMove Upx, Upy
        Loop 13{
            Click "Down"
            Sleep secTime
            Click "Up"
            Sleep halfSecTime
        }

        ;berserk
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
        ;Uses Beserk2 (keep crystals above 5)
        MouseMove A5x, A5y
        Loop 5{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Autoattack2
        MouseMove AAx, AAy
        Loop 5{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Crit2
        MouseMove A1x, A1y
        Loop 3{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Sweep2
        MouseMove A2x, A2y
        Loop 3{
            Click
            Sleep spellTime
        }

        ;WS2
        MouseMove A3x, A3y
        Loop 3{
            Click
            Sleep spellTime
        }

        ;Slam2
        Loop 60{
            MouseMove A4x, A4y
            Click
            Sleep slamTime
        }
        Sleep halfSecTime

        ;Pickup2
        Loop 100{
            MouseMove px, py
            Click
            Sleep pickTime
        }
        Sleep halfSecTime

        ;wait for beserk sweep  cd 6 seconds
        ;auto attack for remaining cd to get crystals
        MouseMove AAx, AAy
        Loop 12{
            Click
            Sleep halfSecTime
        }

        ;Uses Beserk3 (keep crystals above 5)
        MouseMove A5x, A5y
        Loop 5{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Autoattack3
        MouseMove AAx, AAy
        Loop 5{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Crit3
        MouseMove A1x, A1y
        Loop 3{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime

        ;Sweep3
        MouseMove A2x, A2y
        Loop 3{
            Click
            Sleep spellTime
        }

        ;WS3
        MouseMove A3x, A3y
        Loop 3{
            Click
            Sleep spellTime
        }

        ;Slam3
        Loop 60{
            MouseMove A4x, A4y
            Click
            Sleep slamTime
        }
        Sleep halfSecTime

        ;Pickup3
        Loop 100{
            MouseMove px, py
            Click
            Sleep pickTime
        }
        Sleep halfSecTime

        ;move back to start position left sec up halfsec
        ;up halfsec
        MouseMove Upx, Upy
        Click "Down"
        Sleep halfSecTime
        Click "Up"
        Sleep halfSecTime

        ;lef sec to start pos
        MouseMove Leftx, Lefty
        Click "Down"
        Sleep secTime
        Click "Up"
        Sleep halfSecTime

        ;Pickup4 stragglers
        Loop 10{
            MouseMove px, py
            Click
            Sleep pickTime
        }
        Sleep halfSecTime

        ;Sleep for 2:55 min
        Loop 88{
            ;go down then up 175 times
            MouseMove Downx, Downy
            Click "Down"
            Sleep halfSecTime
            Click "Up"

            Sleep halfSecTime

            MouseMove Upx, Upy
            Click "Down"
            Sleep halfSecTime
            Click "Up"

            Sleep halfSecTime
        } 

        ;Uses Beserk1 (keep crystals above 5)
        MouseMove A5x, A5y
        Loop 5{
            Click
            Sleep spellTime
        }
        Sleep halfSecTime


    }

}


; Kill switch
^q::ExitApp

