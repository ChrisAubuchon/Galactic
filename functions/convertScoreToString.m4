convertScoreToString:
		ld	hl, (g_currentScore)
		ld	a, l
		ld	c, 0FFh

l_cnvScore_countHundreds:
					; convertScoreToString+15j
		inc	c
		sub	100
		jp	nc, l_cnvScore_countHundreds
		ld	l, a
		ld	a, h
		cp	0
		jp	z, l_cnvScore_printHundredsDigit
		dec	h
		ld	a, l
		jp	l_cnvScore_countHundreds
; ---------------------------------------------------------------------------

l_cnvScore_printHundredsDigit:
		ld	a, c
		add	a, '0'
		cp	'0'
		jp	z, loc_1F55
		call	putc

loc_1F55:
		ld	a, l
		add	a, 100
		ld	c, 0FFh

l_cnvScore_countTens:
		inc	c
		sub	0Ah
		jp	nc, l_cnvScore_countTens
		add	a, 0Ah
		ld	l, a
		ld	a, c
		add	a, '0'
		call	putc
		ld	a, l
		add	a, '0'
		call	putc
		ret
; End of function convertScoreToString
