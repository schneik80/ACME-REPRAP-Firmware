; End
G90 ; Absolute Movement
G0 Z230
G10 S0; turn off heaters
M140 S-273.15; turn off bed
M107 ; Turn off fan
G0 X0 Y185 F6000; park axis
G4 P100
M300 S600 P240
G4 P445
M300 S600 P240
G4 P345
M300 S400 P600
M117 PRINT FINISHED
M84 ; disable motors
