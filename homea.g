; homea.g
; called to home the A axis, spare motor on the expansion card
;
;
M118 S"Start homea.g"

;G91                 ; relative positioning
G92 A0				; reset position of V to zero
;G90                 ; absolute positioning

M150 P0 S19			; set LEDs, power 0, 19 leds

M118 S"done homea.g"


