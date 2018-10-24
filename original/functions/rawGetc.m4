; ---------------------------------------------------------------------------
; Read a character from the console without echoing
; ---------------------------------------------------------------------------
rawGetc:
		push	bc
		push	de
		push	hl

loc_2C62:
		ld	c, bdos_c_rawio
		ld	e, 0FFh
		call	bdos_func
		cp	0
		jp	z, loc_2C62
		pop	hl
		pop	de
		pop	bc
		ret
