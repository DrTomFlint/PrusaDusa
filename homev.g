; homev.g
; called to home the V axis, Scanner Azimuth.
;
M118 S"Start homev.g"

G91                 ; relative positioning
M564 S0 H0		 ; allow movement outside the regular envalope

;G1 H0 V10		; unconditional move, just to do something?
G92 V0			; reset position of V to zero

M564 S1 H1		 ; dont allow movement outside the regular envalope

G90                 ; absolute positioning

M118 S"done homev.g"

