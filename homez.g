; homez.g
; called to home the Z axis
;
G91                      ; relative positioning
G1 Z5 F6000 S2           ; lift Z relative to current position
G90                      ; absolute positioning
G1 X171.5 Y102.5 F6000   ; go to bed probe point and home Z
G30                      ; home Z by probing the bed
G91                      ; relative positioning
G1 S2 Z5 F360            ; lift Z relative to current position
G90                      ; absolute positioning
