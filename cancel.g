; cancel.g This should get called if a stop command is received when the print is paused
M118 S"Running Cancel.g"		; echo message to console
T-1				; deselect active tool
M106 P1 S0		; turn off fan 1
M106 P2 S0		; turn off fan 2
M140 S0 R0 	    ; set bed active to 0, standby to 0
M144 S0			; make bed standby
G10 P0 S0 R0   ; set tool 0 temp to 0, standby temp to 0
G10 P1 S0 R0   ; set tool 1 temp to 0, standby temp to 0
;G1 Y210 Z235 F4000	; move Y to front, Z up to near top
M118 S"Finished Cancel.g"		; echo message to console

