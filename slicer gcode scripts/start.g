;Starting script to put in slicer
;
; uncoment below for slic3r
;
;G90
;M82
;G28; home all axes
;G10 P0 S[first_layer_temperature_[current_extruder]] R30 ; Set tool 0 operating and standby temperatures
;M190 S[first_layer_bed_temperature] ; wait for bed temp
;
;uncoment below for s3d
;
M140 S[bed0_temperature] ; use for s3d
G10 S[extruder0_temperature] ; use for s3d
;
M116
M300 S600 P240
G4 P445
M300 S600 P240
G4 P345
M300 S900 P600
G28; home all axes
G29 S1; Load bed mesh table
M376 H3; Enable mesh fall off over 3mm
G1 X220 Y2 F6000; bring extruder to front
G92 E0; zero the extruded length
G1 E15 F200; purge nozzle quickly
G1 X210 F6000; Drop nozzle
G1 Z.06 F6000; Drop nozzle
G1 X85 F1000 E30.00; prime strip along front
G92 E0; zero the extruded length again
G1 E-0.5 F400; retract
G1 X75 Z2.5 F9000; pull away filament
G1 X65 F9000; wipe
