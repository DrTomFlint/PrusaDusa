; Configuration file for Duet 3 (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v2.1.8 on Mon Mar 16 2020 12:51:03 GMT-0600 (Mountain Daylight Time)

; General preferences
G90                                                     ; send absolute coordinates...
M83                                                     ; ...but relative extruder moves
M550 P"Dusa"                                          ; set printer name

; Drives
M569 P0.0 S1                                            ; physical drive 0.0 goes forwards, X
M569 P0.1 S0                                            ; physical drive 0.1 goes backwards, Y
M569 P0.2 S1                                            ; physical drive 0.2 goes forwards, Z
M569 P0.3 S1                                            ; physical drive 0.3 goes forwards, E1
M569 P0.4 S1                                            ; physical drive 0.4 goes forwards, E2
M569 P0.5 S0                                            ; physical drive 0.5 goes backwards, U
M584 X0.0 Y0.1 Z0.2 E0.3:0.4 U0.5                        ; set drive mapping, U will be second x carriage
M350 X16 Y16 Z16 E16:16 U16 I1                           ; configure microstepping with interpolation
M92 X200.00 Y200.00 Z400.00 E837.00:837.00 U200.00      ; set steps per mm
M566 X900.00 Y900.00 Z200.00 E120.00:120.00 U900.00       ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z1000.00 E1200.00:1200.00 U6000.00 ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z100.00 E250.00:250.00 U500.00       ; set accelerations (mm/s^2)
M906 X800 Y800 Z800 E800:800 U800 I30                    ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                                 ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 U0 S1                                        ; set axis minima
M208 X243 Y210 Z238 U243 S0                                  ; set axis maxima

; Endstops use ^ to add pullups on endstop switches
M574 X1 S1 P"^io0.in"                                    ; configure NC, on Pin io0.in
M574 Y1 S1 P"^io1.in"                                    ; configure NC, on Pin io1.in
M574 Z2 S1 P"^io2.in"                                    ; configure NC, on Pin io2.in, Z2=endstop is high end
M574 U2 S1 P"^io3.in"                                    ; configure NC, on Pin io3.in, U2=endstop is high end

; Z-Probe
M950 S0 C"io7.out"                                      ; create servo pin 0 for BLTouch
M558 P9 C"io7.in" H6 F100 T2000                 		; set Z probe type to bltouch and the dive height + speeds
G31 P25 X-40 Y0 Z2.922                                   ; set Z probe trigger value, offset and trigger height
M557 X30:200 Y5:205 P4                                ; define mesh grid

; Heater 0 Bed
M308 S0 P"temp0" Y"thermistor" T100000 B4138            ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"out0" T0                                      ; create bed heater output on out0 and map it to sensor 0
M143 H0 S120                                            ; set temperature limit for heater 0 to 120C
M307 H0 A120.5 C456.5 D5.3 V23.9 B0 S1.00               ; PID tuned with steel sheet, 9 April 2020, B0=banb-bang off
M140 H0                                                 ; map heated bed to heater 0

; Heater 1 Left Extruder
M308 S1 P"temp1" Y"thermistor" T100000 B4138            ; configure sensor 1 as thermistor on pin temp1
M950 H1 C"out1" T1                                      ; create nozzle heater output on out1 and map it to sensor 1
M143 H1 S280                                            ; set temperature limit for heater 1 to 280C
M307 H1 A268.3 C97.9 D2.65 V23.9 B0 S1.00               ; calibrated with M303 H1 P1 S230, 17 June 2020

; Heater 2 Right Extruder
M308 S2 P"temp2" Y"thermistor" T100000 B4138            ; configure sensor 2 as thermistor on pin temp2
M950 H2 C"out2" T2                                      ; create nozzle heater output on out2 and map it to sensor 2
M143 H2 S280                                            ; set temperature limit for heater 2 to 280C
M307 H2 A254.7 C100.2 D3.1 V23.9 B0 S1.00               ; calibrate with M303 H2 P1 S230, 17 June 2020

; Fans
M950 F0 C"!out4" Q25000                                 ; create fan 0 on pin out4, !=invert output, and set frequency to 25 kHz, Radiator fan
M106 P0 S0.5 H-1                                        ; set fan 0, speed 0.5, Thermostatic control is turned off (-1)

; Blowers
M950 F1 C"!^out5" Q25000                                ; create fan 1 on pin "out5", !=invert output, set frequency to 25 kHz, Extruder 1 blower
M106 P1 S0.5 H-1                                        ; set fan 1 value. Thermostatic control is turned off, Extruder 2 blower
M950 F2 C"!^out6" Q25000                                ; create fan 2 on pin "out6", !=invert output, set frequency to 25 kHz, Extruder 2 blower
M106 P2 S0.5 H-1                                        ; set fan 2 value. Thermostatic control is turned off

; Water Pump
M950 F3 C"out7" Q25000                                  ; create fan 3 on pin "out7", don't invert, set frequency to 25 kHz, Water Pump motor
M106 P3 S0 H-1                                        	; set fan 3 value. Thermostatic control is turned off

; Tools
M563 P0 S"Left" D0 H1 F0                                ; define tool 0
G10 P0 X0 Y0 Z0                                         ; set tool 0 axis offsets
G10 P0 R0 S0                                            ; set initial tool 0 active and standby temperatures to 0C
M563 P1 S"Right" D1 H2 F1                               ; define tool 1
G10 P1 U0 Y0 Z0                                         ; set tool 1 axis offsets
G10 P1 R0 S0                                            ; set initial tool 1 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
T0                                                      ; select first tool

