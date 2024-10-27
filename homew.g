; homew.g
; called to home the W axis, Scanner Elevation.
;
;
M118 S"Start homew.g"

G91                 ; relative positioning
M564 S0 H0		 ; allow movement outside the regular envalope

;G1 H0 W1		; unconditional move, just to do something?
G92 W0			; reset position of V to zero

M564 S1 H1		 ; dont allow movement outside the regular envalope

G90                 ; absolute positioning

M118 S"done homew.g"


