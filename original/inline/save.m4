l_inline_save:
		ld	de, currentTimeMaybe
		ld	hl, baseTimeMaybe ; "1620"
		ld	bc, 4
		call	abbreviateWord
		ld	a, 1
		ld	(g_restoredGameFlag), a
		ld	c, 14
		ld	hl, g_saveTextBuffer

l_save_clearTextBuffer:
		ld	(hl), 0
		inc	hl
		dec	c
		jp	nz, l_save_clearTextBuffer

		printMessage(s_saveGamePrompt)
		ld	hl, g_saveTextBuffer
		ld	b, 0

loc_3E40:
		call	getc
		cp	ascii_backspace
		jp	z, l_save_backspace
		cp	ascii_delete
		jp	z, l_save_delete
		cp	'a'
		jp	c, loc_3E59
		cp	'{'
		jp	nc, loc_3E59
		sub	' '

loc_3E59:
		ld	(hl), a
		inc	hl
		inc	b
		cp	ascii_cr
		jp	nz, loc_3E40

		dec	hl			; NULL terminate text buffer
		ld	(hl), 0

		ld	hl, g_saveTextBuffer
		ld	a, fh_bgn
		call	fileCreate
		cp	1
		jp	nz, loc_3E7B
		printMessage(s_badFileName)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3E7B:
		ld	a, fh_bgn
		ld	bc, 1C00h
		ld	de, baseBGNAddress
		call	fileWrite
		cp	1
		jp	nz, loc_3E9A
		ld	a, fh_bgn
		call	fileClose
		printMessage(s_noRoomOnMedia)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3E9A:
		ld	a, fh_bgn
		call	fileClose
		printMessage(s_done)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_save_backspace:
		ld	a, b
		cp	0
		jp	nz, loc_3EBC
		ld	a, ascii_bell
		call	putc
		ld	a, ' '
		call	putc
		jp	loc_3E40
; ---------------------------------------------------------------------------

loc_3EBC:
		dec	b
		dec	hl
		ld	a, ' '
		call	putc
		ld	a, ascii_backspace
		call	putc
		jp	loc_3E40
; ---------------------------------------------------------------------------

l_save_delete:
		ld	a, b
		cp	0
		jp	nz, loc_3EDE
		ld	a, ascii_bell
		call	putc
		ld	a, ' '
		call	putc
		jp	loc_3E40
; ---------------------------------------------------------------------------

loc_3EDE:
		dec	b
		dec	hl
		ld	a, ' '
		call	putc
		ld	a, ascii_backspace
		call	putc
		jp	loc_3E40
