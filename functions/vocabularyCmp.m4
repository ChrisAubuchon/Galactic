vocabularyCmp:
		ld	c, 5

loc_1E91:
		ld	a, (de)
		sub	6			; vocabulary characters are [ch+6]
		cp	(hl)
		jp	nz, loc_1EA1
		inc	de
		inc	hl
		dec	c
		jp	nz, loc_1E91
		ld	b, 0			; strings match
		ret
; ---------------------------------------------------------------------------

loc_1EA1:
		jp	c, loc_1EA7
		ld	b, 2			; return 2 if *vocabulary >= *input
		ret
; ---------------------------------------------------------------------------

loc_1EA7:
		ld	b, 1			; return 1 if *vocabulary < *input
		ret
; End of function vocabularyCmp
