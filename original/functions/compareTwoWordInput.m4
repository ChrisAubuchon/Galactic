; ---------------------------------------------------------------------------
; Compare string tokens with a specific two word phrase
;
; b - First word
; c - Second word
; ---------------------------------------------------------------------------
compareTwoWordInput:
		ld	a, (firstToken)
		cp	b
		jp	z, loc_20C0
		cp	c
		jp	z, loc_20C7

loc_20BD:
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_20C0:
		ld	a, (secondToken)
		cp	c
		jp	z, loc_20D1

loc_20C7:
		ld	a, (secondToken)
		cp	b
		jp	z, loc_20D1
		jp	loc_20BD

loc_20D1:
		ld	a, 1
		ret
; End of function compareTwoWordInput
