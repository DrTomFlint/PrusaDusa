; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool v2.1.8 on Mon Mar 16 2020 12:51:04 GMT-0600 (Mountain Daylight Time)
G91              ; relative positioning
G1 H1 Z245 F4000 ; move Z up until the endstop is triggered
M564 S0 H0		 ; allow movement outside the regular envalope
;M913 Z30		; reduce z motor current to 30%
G1 H0 Z5 F400	 ; move up against the hardstops to get both sides equal
M400			 ; wait till move is complete
;M913 Z100		; return z motor current to 100%
M564 S1 H1		 ; don't allow movement outside the regular envalope
G1 H0 Z-5 F4000  ; back off 5 mm
G1 H1 Z10 F360	 ; move up slowly, 2nd pass
M400				; wait for prior command to complete, otherwise get the setposition called when DDA ring not empty error
G92 Z238         ; set Z position to axis max, adjusted to avoid extruders hitting buildplate, with original x carriages

; Uncomment the following lines to lift Z after probing
;G91             ; relative positioning
;G1 Z5 F100      ; lift Z relative to current position
;G90             ; absolute positioning
