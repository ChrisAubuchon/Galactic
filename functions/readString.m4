readString:
		call	printStackString

		db	ascii_cr
		db	ascii_tab
		.ascii  '  ? '
		db	STRING_TERM

		ld	hl, inputBuffer
		ld	b, 0

l_readString_ioLoop:
		call	getc
		cp	ascii_backspace
		jp	z, l_readString_backspace
		cp	7Fh ; ''
		jp	z, l_readString_delete
		cp	'a'				; jp loc_2142 if not a lowercase letter
		jp	c, loc_2142
		cp	'{'
		jp	nc, loc_2142

		; Capitalize lower case letter
		sub	ascii_space

loc_2142:
		ld	(hl), a
		inc	hl
		inc	b
		cp	0Dh
		jp	nz, l_readString_ioLoop
		ret
; ---------------------------------------------------------------------------

l_readString_backspace:
		ld	a, b
		cp	0
		jp	nz, loc_215E
		ld	a, ascii_bell
		call	putc
		ld	a, ascii_space
		call	putc
		jp	l_readString_ioLoop
; ---------------------------------------------------------------------------

loc_215E:
		dec	b
		dec	hl
		ld	a, ascii_space
		call	putc
		ld	a, ascii_backspace
		call	putc
		jp	l_readString_ioLoop
; ---------------------------------------------------------------------------

l_readString_delete:
		ld	a, b
		cp	0
		jp	nz, loc_2180
		ld	a, ascii_bell
		call	putc
		ld	a, ascii_space
		call	putc
		jp	l_readString_ioLoop
; ---------------------------------------------------------------------------

loc_2180:
		dec	b
		dec	hl
		ld	a, ascii_space
		call	putc
		ld	a, ascii_backspace
		call	putc
		jp	l_readString_ioLoop
