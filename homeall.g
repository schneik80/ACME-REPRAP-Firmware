; homeall.g
; called to home all axes
;
M561                      ; Clear any bed transform
G91                       ; relative positioning
G1 Z5 F6000 S2            ; lift Z relative to current position
G1 S1 X-300 Y-300 F6000   ; move quickly to X and Y axis endstops and stop there (first pass)
G1 X5 Y5 F6000            ; go back a few mm
G1 S1 X-300 Y-300 F360    ; move slowly to X and Y axis endstops once more (second pass)
G90                       ; absolute positioning
G1 X171.5 Y102.5 F6000    ; go to bed probe point and home Z
G30                       ; home Z by probing the bed
G91                       ; relative positioning
G1 Z5 F360                ; lift Z relative to current position
G90                       ; absolute positioning
;
;Tone
M300 S2200 P100
G4 P150
M300 S2200 P100
G4 P150
M300 S2200 P100
