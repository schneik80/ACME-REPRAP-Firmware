; bed.g
; called to perform automatic bed compensation via G32
;
M561                           ; Clear any bed transform
G29 S2
;M557 X25:270 Y20:185 P3:2      ; Fill 314x214
; M557 X64:250 Y22:185 S62:54  ; Use this when glass bed
;
;Mesh probe
;
G29 S0                         ;Probe Mesh table
G29 S1                         ;Store bed mesh table
M376 H2.5                      ;Enable mesh fall off over 2.5mm
M500			               ;Store all values
