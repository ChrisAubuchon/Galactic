; b is the low bounds
; c is the high bounds
;
pseudoRNG:
		ld	a, c
		sub	b
		add	a, 1
		ld	c, a		; c = (c - b) + 1
		push	bc
		call	sub_21B8
		pop	bc
		rla
		ld	l, a
		rla
		rla
		rla
		and	0F0h
		ld	d, a
		push	bc
		push	hl
		call	sub_21B8
		pop	hl
		pop	bc
		rla
		rla
		ld	h, a
		rra
		rra
		and	0Fh
		add	a, d
		add	a, (hl)

loc_21B1:
		sub	c
		jp	nc, loc_21B1
		add	a, c
		add	a, b
		ret
; End of function pseudoRNG


; =============== S U B	R O U T	I N E =======================================


sub_21B8:
		ld	hl, unk_21DE
		ld	b, 8
		ld	a, (hl)

loc_21BE:
		rlca
		rlca
		rlca
		xor	(hl)
		rla
		rla
		dec	l
		dec	l
		dec	l
		ld	a, (hl)
		rla
		ld	(hl), a
		inc	l
		ld	a, (hl)
		rla
		ld	(hl), a
		inc	l
		ld	a, (hl)
		rla
		ld	(hl), a
		inc	l
		ld	a, (hl)
		rla
		ld	(hl), a
		dec	b
		jp	nz, loc_21BE
		ret
; End of function sub_21B8
