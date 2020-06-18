; bed.g
; called to perform automatic bed compensation via G32
;
;hand edit 16 June 2020 TF

M561 			; clear any bed transform
M280 P0 S10		; deploy the BLtouch probe
G29   			; probe the bed and enable compensation


