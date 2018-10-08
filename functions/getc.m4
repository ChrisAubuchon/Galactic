; ---------------------------------------------------------------------------
; Read a character from the console
;
; Returns:
;   a - character input
; ---------------------------------------------------------------------------
getc:
		push	bc
		push	de
		push	hl
		ld	c, bdos_c_read
		call	bdos_func
		cp	ascii_cr
		jp	nz, loc_2C5B
		push	af
		ld	e, ascii_lf
		ld	c, bdos_c_write
		call	bdos_func
		pop	af

loc_2C5B:
		pop	hl
		pop	de
		pop	bc
		ret
