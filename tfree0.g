; tfree0.g
; called when tool 0 is freed
; move Z up when parking
M118 S"tfree0, park T0"
G91			; relative positioning
G1 Z5 F6000	; move Z up 5 mm
G90			; absolute positioning
G1 X-46 F6000 ; park extruder 1, do it quickly to break strings
M400		; complete all moves


