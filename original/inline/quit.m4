l_inline_quit:
		cp	p_quit
		jp	nz, loc_F6C
		printMessage(s_quitQuestion)
		call	getYesNo
		cp	0
		jp	z, l_inline_printOkayAndLoop

l_inline_playerDied:
		decreaseScore(25)

loc_F1B:
		printMessage(s_endScorePrefix)
		call	convertScoreToString
		printMessage(s_endScorePostfix)
		ld	hl, (g_currentScore)
		ld	bc, 50
		ld	de, 0

loc_F35:
		ld	a, l
		sub	c
		ld	l, a
		jp	c, loc_F3F
		inc	e
		jp	loc_F35
; ---------------------------------------------------------------------------

loc_F3F:
		ld	a, h
		cp	0
		jp	z, loc_F4A
		dec	h
		inc	e
		jp	loc_F35
; ---------------------------------------------------------------------------

loc_F4A:
		push	de
		ld	hl, 0
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	hl, g_rankMessageList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		pop	de
		ld	a, e
		cp	12h
		jp	nz, loc_F69
		printMessage(s_galaxySalutes)

loc_F69:
		jp	l_inline_closeAndExit
; ---------------------------------------------------------------------------
