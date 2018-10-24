; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_introRestoreGame:
		ld	hl, g_clearScreen
		call	outputString
		printMessage(s_copyRight)

loc_157:
		ld	hl, g_intro_filenameBuffer
		ld	c, 0
		ld	b, 0

loc_15E:
		call	getc
		cp	ascii_backspace
		jp	z, loc_19E
		cp	ascii_delete
		jp	z, loc_1C1
		cp	'a'
		jp	c, loc_177
		cp	'{'
		jp	nc, loc_177
		sub	' '

loc_177:
		ld	(hl), a
		inc	hl
		inc	c
		inc	b
		cp	0Dh
		jp	nz, loc_15E
		dec	hl
		ld	(hl), 0
		ld	a, c
		cp	2
		jp	c, loc_1E4
		ld	hl, g_intro_filenameBuffer
		ld	a, fh_bgn
		call	fileOpen
		jp	nz, loc_227
		printMessage(s_saveHelp)
		jp	loc_157
; ---------------------------------------------------------------------------

loc_19E:
		ld	a, b
		cp	0
		jp	nz, loc_1B1
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_15E
; ---------------------------------------------------------------------------

loc_1B1:
		dec	b
		dec	hl
		dec	c
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_15E
; ---------------------------------------------------------------------------

loc_1C1:
		ld	a, b
		cp	0
		jp	nz, loc_1D4
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_15E
; ---------------------------------------------------------------------------

loc_1D4:
		dec	b
		dec	hl
		dec	c
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_15E
