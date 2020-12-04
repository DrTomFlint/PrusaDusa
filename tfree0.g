; tfree0.g
; called when tool 0 is freed
; move Z up when parking
M118 S"tfree0, park T0"
G91			; relative positioning
G1 Z5 F2000	; move Z up 5 mm
G90			; absolute positioning
G1 X-43 F2000 ; park extruder 1
M400		; complete all moves


