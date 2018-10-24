; ---------------------------------------------------------------------------
; Print a statically compiled string terminated by STRING_TERM
;
; Looks like it switches CR and LF. So an input of CR outputs LF and vice-versa
;
; hl - String address
; ---------------------------------------------------------------------------
outputString:
		push	bc
		push	de

loc_2C0E:
		ld	e, (hl)
		ld	a, e
		cp	STRING_TERM
		jp	z, loc_2C2A
		cp	ascii_lf
		call	z, outputString_outputCR
		cp	ascii_cr
		call	z, outputString_outputLF
		inc	hl
		push	hl
		ld	c, bdos_c_write
		call	bdos_func
		pop	hl
		jp	loc_2C0E
; ---------------------------------------------------------------------------

loc_2C2A:
		pop	de
		pop	bc
		ret

; ---------------------------------------------------------------------------
; Helper function to output CR
; ---------------------------------------------------------------------------
outputString_outputCR:
		push	hl
		ld	e, ascii_cr
		ld	c, bdos_c_write
		call	bdos_func
		pop	hl
		ld	e, ascii_lf
		ret

; ---------------------------------------------------------------------------
; Helper function to output CR
; ---------------------------------------------------------------------------
outputString_outputLF:
		push	hl
		ld	e, ascii_lf
		ld	c, bdos_c_write
		call	bdos_func
		pop	hl
		ld	e, ascii_cr
		ret

