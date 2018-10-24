subtractFromScore:
		ld	hl, (g_currentScore)
		ld	a, l
		sub	b
		ld	l, a
		jp	c, loc_1F7D
		ld	(g_currentScore), hl
		ret
; ---------------------------------------------------------------------------

loc_1F7D:
		ld	a, h
		cp	0
		jp	z, loc_1F88
		dec	h
		ld	(g_currentScore), hl
		ret
; ---------------------------------------------------------------------------

loc_1F88:
		ld	l, 0
		ld	(g_currentScore), hl
		ret
; End of function subtractFromScore
