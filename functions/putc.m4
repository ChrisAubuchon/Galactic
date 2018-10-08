; ---------------------------------------------------------------------------
; Write a character to the console
;
; a - Character to write
; ---------------------------------------------------------------------------
putc:
		push	bc
		push	de
		push	hl
		ld	c, bdos_c_write
		ld	e, a
		push	af
		call	bdos_func
		pop	af
		cp	ascii_lf
		jp	nz, loc_2C97
		ld	c, bdos_c_write
		ld	e, ascii_cr
		call	bdos_func
		jp	loc_2CA3

loc_2C97:
		cp	ascii_cr
		jp	nz, loc_2CA3
		ld	c, bdos_c_write
		ld	e, ascii_lf
		call	bdos_func

loc_2CA3:
		pop	hl
		pop	de
		pop	bc
		ret
