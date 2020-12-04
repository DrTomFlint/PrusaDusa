; homez.g
; called to home the Z axis
;
; hand coded June 2020
G91              ; relative positioning
G1 H1 Z245 F4000 ; move Z up until the endstop is triggered
M564 S0 H0		 ; allow movement outside the regular envalope
M913 Z50		; reduce z motor current to 50%
G1 H0 Z5 F400	 ; move up against the hardstops to get both sides equal
M400			 ; wait till move is complete
M913 Z100		; return z motor current to 100%
M564 S1 H1		 ; don't allow movement outside the regular envalope
G1 H0 Z-5 F4000  ; back off 5 mm
G1 H1 Z10 F360	 ; move up slowly, 2nd pass
M400				; wait for prior command to complete, otherwise get the setposition called when DDA ring not empty error
