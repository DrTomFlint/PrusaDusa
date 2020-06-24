; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
;
T-1 ; deselect all the tools
G28 XU ; home the X and U axis
G1 Y210 F2000 ; move Y to the front
M140 S0 ; turn off the bed heater
