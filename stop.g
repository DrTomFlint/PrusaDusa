; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
;
G92 ; relative move mode
G1 Z20 F2000 ; move Z up 20 mm
G91 ; back to absolute move mode
G28 XU ; home the X and U axis
G1 Y210 F2000 ; move Y to the front
T-1 ; deselect all the tools
M140 S0 ; turn off the bed heater
