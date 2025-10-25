#Requires AutoHotkey v2.0
#z::Run "https://www.autohotkey.com"  ; Win+Z
CoordMode "Mouse", "Window"

;List of coord variables

;Up key "Up"
Upx := 180, Upy := 471

;left key "Left"
Leftx := 117, Lefty := 571

;down key "Down"
Downx := 185, Downy := 648

;right key "Right"
Rightx := 271, Righty := 555

;Auto Attack "Space"
AAx := 1168, AAy := 638

;pickup "p"
px := 1213, py := 500

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

;Inventory "i"
Ix := 1150, Iy := 83

;Mobility Using Arrow Keys
Up::{
    MouseMove Upx, Upy      ; clicks at 180x471
    Click "Down"            ; Holds the key down 
    KeyWait "Up"            ; wait until W is released
    Click "Up"              ; lifts at the end             
}

Left::{
    MouseMove Leftx, Lefty   ; clicks at 117x571
    Click "Down"             ; Holds the key down 
    KeyWait "Left"           ; wait until W is released
    Click "Up"               ; lifts at the end             
}

Down::{
    MouseMove Downx, Downy  ; clicks at 185x648
    Click "Down"            ; Holds the key down 
    KeyWait "Down"          ; wait until W is released
    Click "Up"              ; lifts at the end             
}

Right::{
    MouseMove Rightx, Righty    ; clicks at 271x555
    Click "Down"                ; Holds the key down 
    KeyWait "Right"             ; wait until W is released
    Click "Up"                  ; lifts at the end             
}

;Auto Attack and Abilities up to 4, and pick up
;Space = AA, q = A1, w = A2 ... t = A5x
;p = pick up

Space::{
    MouseMove AAx, AAy          ;moves to AA loc
    Click                       ;Single Click
}

q::{
    MouseMove A1x, A1y          ;moves to Ability1 loc
    Click                       ;Single Click
}

w::{
    MouseMove A2x, A2y          ;moves to Ability2 loc
    Click                       ;Single Click
}

e::{
    MouseMove A3x, A3y          ;moves to Ability3 loc
    Click                       ;Single Click
}

r::{
    MouseMove A4x, A4y          ;moves to Ability4 loc
    Click                       ;Single Click
}

t::{
    MouseMove A5x, A5y          ;moves to Ability5 loc
    Click                       ;Single Click
}

p::{
    MouseMove px, py          ;moves to pickup loc
    Click                       ;Single Click
}

; Kill switch Esc+Ctrl
^Esc::ExitApp    ; Ctrl + Esc to quit