; tfree1.g
; called when tool 1 is freed
; move Z up while parking
M118 S"tfree1, park T1"
G91			; relative positioning
G1 Z5 F2000		; move z up 5 mm
G90			; absolute positioning
G1 U243 F2000 ; park extruder 2
M400		; complete all moves

