; General preferences
G90                                                ; Send absolute coordinates...
M83                                                ; ...but relative extruder moves
;
; Network
M550 PACME-iv                                      ; Set machine name
M552 S1                                            ; Enable network
;
; Drives
M569 P0 S1                                         ; Drive 0 goes forwards
M569 P1 S0                                         ; Drive 1 goes backwards
M569 P2 S1                                         ; Drive 2 goes forwards
M569 P3 S1                                         ; Drive 3 goes forwards
M350 X16 Y16 Z16 E16 I1                            ; Configure microstepping with interpolation
M92 X80 Y80 Z400 E413.75                           ; Set steps per mm
M566 X900 Y900 Z100 E120                           ; Set maximum instantaneous speed changes (mm/min)
M203 X18000 Y18000 Z6000 E1940                     ; Set maximum speeds (mm/min)
M201 X600 Y600 Z250 E250                           ; Set accelerations (mm/s^2)
M906 X800 Y800 Z800 E800 I30                       ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                                            ; Set idle timeout
;
; Axis Limits
;M208 X295.0:0.0 Y205.0:0.0 Z240.0:-1.0            ; Set max and min values
M208 X0 Y0 Z-1 S1                                  ; Set axis minima
M208 X295 Y205 Z240 S0                             ; Set axis maxima
;
; Endstops
M574 X1 Y1 S0                                      ; Set active high endstops
;
; Z-Probe
M574 Z0 S2                                         ; Set endstops controlled by probe
M558 P1 X0 Y0 Z1 F200 T6000 A2 H3.0 R0             ; Set Z probe type to modulated and the dive height + speeds
G31 P500 X-24 Y0 Z2.30                             ; Set Z probe trigger value, offset and trigger height
M557 X25:270 Y20:185 p3:3                          ; Define mesh grid
;
; Heaters
M305 P0 S"Bed" R4700 T100000 B3950                 ; Set thermistor + ADC parameters for heater 0
M143 H0 S120                                       ; Set temperature limit for heater 0 to 120C
M301 H1 S0.70                                      ; Set heater 1 PWM limit to 70%
M305 P1 R4700 T100000 B4725 C7.06e-8               ; Set thermistor + ADC parameters for heater 1
M143 H1 S295                                       ; Set temperature limit for heater 1 to 295C
;
; Fans
M106 P0 C"Cooling" H-1 S0                          ; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 C"Cold-end" I0 F500 H1 T45              ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P2 S0 C"P2" I0 F500 H1 T45                    ; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned off
;
; Tools
;
; T0
M563 P0 D0 H1                                      ; Define tool 0
G10 P1 X0 Y0 Z0                                    ; Set tool 1 axis offsets
G10 P1 R0 S0                                       ; Set initial tool 1 active and standby temperatures to 0C
;
; Automatic power saving
M911 S12 R13 P"M913 X0 Y0 G91 M83 G1 Z3 E-5 F1000" ; Set voltage thresholds and actions to run on power loss
;
; Custom settings
M912 P0 S0                                         ; Put  CPU temperature sensor correction here
G4 P1000                                           ; pause...
T0                                                 ; Select first tool
M501                                               ; load overrides
