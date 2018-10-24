dnl Local Macros
dnl
define(`BLANK', `02Dh')dnl			; Blank space is denoted with a '-'
define(`UPPER_LEFT',	`0')dnl			; 
define(`UPPER_MIDDLE',	`1')dnl			; 
define(`UPPER_RIGHT',	`2')dnl			;
define(`LOWER_RIGHT',	`3')dnl			;
define(`LOWER_MIDDLE',	`4')dnl			;
define(`LOWER_LEFT',	`5')dnl			;
define(`ORANGE',	`4Fh')dnl		;
define(`YELLOW',	`59h')dnl		;
define(`RED',		`52h')dnl		;
define(`BLUE',		`42h')dnl		;
define(`GREEN',		`47h')dnl		;
; ---------------------------------------------------------------------------
; slider minigame
; ---------------------------------------------------------------------------
l_minigame_slider:
		ld	hl, g_slider_resetGraphics
		call	outputString

l_slider_printPrompt:
		ld	hl, g_slider_prompt
		call	outputString
		ld	hl, g_inputBuffer

l_slider_getc:
		call	getc
		ld	(hl), a
		inc	hl
		cp	ascii_cr
		jp	z, l_slider_checkString
		jp	l_slider_getc

l_slider_checkString:
		ld	a, (g_inputBuffer)
		ld	b, a
		ld	hl, g_slider_upperLeft
		ld	c, 0

l_slider_searchOptions:
		ld	a, (hl)
		cp	b
		jp	z, loc_4121
		inc	hl
		inc	c
		ld	a, c
		cp	6
		jp	z, l_slider_updateCounter
		jp	l_slider_searchOptions
; ---------------------------------------------------------------------------

loc_4121:
		ld	a, c
		cp	UPPER_MIDDLE
		jp	z, l_slider_moveUpperMiddle
		cp	LOWER_MIDDLE
		jp	z, l_slider_moveLowerMiddle

l_slider_moveCorner:
		ld	de, 0
		ld	a, c
		ld	(g_slider_moveSource), a		; Set the move source
		add	a, 1					; Check cw cavity
		cp	6					; Wrap to 0 if in cavity 5
		jp	nz, loc_413C
		ld	a, 0

loc_413C:
		ld	e, a
		ld	hl, g_slider_upperLeft
		add	hl, de					; Set address ...
		ld	a, (hl)
		cp	BLANK					; ... and check for BLANK
		jp	z, loc_415F

		ld	a, c
		sub	1					; Check ccw cavity
		cp	0FFh					; Wrap to 5 if in cavity 0
		jp	nz, loc_4151
		ld	a, 5

loc_4151:
		ld	e, a
		ld	hl, g_slider_upperLeft
		add	hl, de					; Set address ...
		ld	a, (hl)
		cp	BLANK					; ... and check for BLANK
		jp	z, loc_415F
		jp	l_slider_updateCounter
; ---------------------------------------------------------------------------

loc_415F:
		ld	a, e
		ld	(g_slider_moveDestination), a

l_slider_updateDisplay:
		ld	hl, g_slider_upperLeft
		ld	a, (g_slider_moveSource)
		ld	e, a
		add	hl, de
		ld	a, BLANK
		ld	(hl), a

		ld	hl, g_slider_upperLeft
		ld	a, (g_slider_moveDestination)
		ld	e, a
		add	hl, de
		ld	a, (g_inputBuffer)
		ld	(hl), a
		ld	a, (g_slider_moveSource)
		call	slider_setCursor
		ld	c, 4

l_slider_clearCrystal:
		ld	hl, g_slider_clearLine
		call	outputString
		dec	c
		ld	a, c
		cp	0
		jp	z, l_slider_drawCrystal
		ld	hl, g_slider_nextLine
		call	outputString
		jp	l_slider_clearCrystal
; ---------------------------------------------------------------------------

l_slider_drawCrystal:
		ld	a, (g_slider_moveDestination)
		call	slider_setCursor
		ld	hl, g_slider_crystalLine
		call	outputString
		ld	hl, g_slider_nextLine
		call	outputString
		ld	hl, g_slider_crystalShort
		call	outputString
		ld	a, (g_inputBuffer)
		ld	b, a
		ld	hl, g_slider_crystalColor
		ld	de, 8

l_slider_findColorHeader:
		ld	a, (hl)
		cp	b
		jp	z, l_slider_finishCrystal
		add	hl, de
		jp	l_slider_findColorHeader
; ---------------------------------------------------------------------------

l_slider_finishCrystal:
		inc	hl
		call	outputString
		ld	hl, g_slider_crystalShort
		call	outputString
		ld	hl, g_slider_nextLine
		call	outputString
		ld	hl, g_slider_crystalLine
		call	outputString
		ld	hl, g_slider_nextLine
		call	outputString
		ld	hl, g_slider_crystalLine
		call	outputString

		; Check for BLUE in the upper right cavity
		ld	hl, g_slider_upperRight
		ld	a, (hl)
		cp	BLUE
		jp	nz, l_slider_updateCounter

		; Check for RED in the lower right cavity
		inc	hl
		ld	a, (hl)
		cp	RED
		jp	nz, l_slider_updateCounter

		; RED and BLUE
		ld	a, 1
		ld	(g_slider_gameWonFlag), a

		ld	a, room_navier_levelOneEntrance
		ld	(g_currentRoomNumber), a

		ld	hl, g_findLocker_clearScreen
		call	outputString
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

l_slider_updateCounter:
		ld	a, (g_slider_onesDigit)
		cp	30h ; '0'
		jp	z, l_slider_checkTensDigit
		sub	1
		ld	(g_slider_onesDigit), a
		jp	l_slider_printCounter
; ---------------------------------------------------------------------------

l_slider_checkTensDigit:
		ld	a, 39h ; '9'
		ld	(g_slider_onesDigit), a
		ld	a, (g_slider_tensDigit)
		cp	30h ; '0'
		jp	z, l_slider_fail
		sub	1
		ld	(g_slider_tensDigit), a

l_slider_printCounter:
		ld	hl, g_slider_moveCounter
		call	outputString
		jp	l_slider_printPrompt
; ---------------------------------------------------------------------------

l_slider_fail:
		ld	hl, g_findLocker_clearScreen
		call	outputString
		printMessage(s_boxExploded)
		jp	l_inline_playerDied
; ---------------------------------------------------------------------------

l_slider_moveUpperMiddle:
		ld	hl, g_slider_lowerMiddle
		ld	a, (hl)
		cp	BLANK
		jp	nz, l_slider_moveCorner

		ld	a, (g_slider_upperMiddle)
		ld	(g_slider_lowerMiddle), a

		ld	a, BLANK
		ld	(g_slider_upperMiddle), a

		ld	a, UPPER_MIDDLE
		ld	(g_slider_moveSource), a

		ld	a, LOWER_MIDDLE
		ld	(g_slider_moveDestination), a
		jp	l_slider_updateDisplay
; ---------------------------------------------------------------------------

l_slider_moveLowerMiddle:
		ld	hl, g_slider_upperMiddle
		ld	a, (hl)
		cp	BLANK
		jp	nz, l_slider_moveCorner

		ld	a, (g_slider_lowerMiddle)
		ld	(g_slider_upperMiddle), a

		ld	a, BLANK
		ld	(g_slider_lowerMiddle), a

		ld	a, LOWER_MIDDLE
		ld	(g_slider_moveSource), a
		ld	a, UPPER_MIDDLE
		ld	(g_slider_moveDestination), a
		jp	l_slider_updateDisplay

; =============== S U B	R O U T	I N E =======================================


slider_setCursor:
		ld	e, a
		ld	hl, 0
		add	hl, de
		add	hl, hl
		add	hl, hl
		add	hl, de
		ex	de, hl
		ld	hl, g_slider_cavityCursorList
		add	hl, de
		call	outputString
		ret
; End of function slider_setCursor

; ---------------------------------------------------------------------------
g_slider_upperLeft:		db 'O'				; Upper left
g_slider_upperMiddle:		db 'Y'				; Upper Middle
g_slider_upperRight:		db 'R'				; Upper Right
				db 'B'				; Lower Right
g_slider_lowerMiddle:		db 'G'				; Lower Middle
				db BLANK			; Lower Left
g_slider_prompt:		db SET_CURSOR_ADDRESS(20, 17)
				.ascii "What color?        "
				db SET_CURSOR_ADDRESS(20, 30)
				db STRING_TERM
g_slider_crystalColor:		.ascii "OORANGE"
				db STRING_TERM
				.ascii "YYELLOW"
				db STRING_TERM
				.ascii "R RED  "
				db STRING_TERM
				.ascii "B BLUE "
				db STRING_TERM
				.ascii "GGREEN "
				db STRING_TERM
g_slider_cavityCursorList:	db SET_CURSOR_ADDRESS(8, 18)
				db STRING_TERM
				db SET_CURSOR_ADDRESS(8, 30)
				db STRING_TERM
				db SET_CURSOR_ADDRESS(8, 42)
				db STRING_TERM
				db SET_CURSOR_ADDRESS(13, 42)
				db STRING_TERM
				db SET_CURSOR_ADDRESS(13, 30)
				db STRING_TERM
				db SET_CURSOR_ADDRESS(13, 18)
				db STRING_TERM
g_slider_resetGraphics:		db EXIT_GRAPHICS_MODE
				db EXIT_REVERSE_VIDEO_MODE
				db STRING_TERM
g_slider_clearLine:		.ascii "          "
				db STRING_TERM
g_slider_nextLine:		db CURSOR_DOWN
				db CURSOR_LEFT
				db CURSOR_LEFT
				db CURSOR_LEFT
				db CURSOR_LEFT
				db CURSOR_LEFT
				db CURSOR_LEFT
				db CURSOR_LEFT
				db CURSOR_LEFT
				db CURSOR_LEFT
				db CURSOR_LEFT
				db STRING_TERM
g_slider_crystalLine:		db ENTER_GRAPHICS_MODE
				db key_ELLIPSIS
				db key_ELLIPSIS
				db key_ELLIPSIS
				db key_ELLIPSIS
				db key_ELLIPSIS
				db key_ELLIPSIS
				db key_ELLIPSIS
				db key_ELLIPSIS
				db key_ELLIPSIS
				db key_ELLIPSIS
				db EXIT_GRAPHICS_MODE
				db STRING_TERM
g_slider_crystalShort:		db ENTER_GRAPHICS_MODE
				db key_ELLIPSIS
				db key_ELLIPSIS
				db EXIT_GRAPHICS_MODE
				db STRING_TERM
g_slider_moveSource:		db 0
g_slider_moveDestination:	db 0
g_slider_moveCounter:		db SET_CURSOR_ADDRESS(18, 27)
				db ENTER_REVERSE_VIDEO_MODE
g_slider_tensDigit:		db '2'
g_slider_onesDigit:		db '5'
				db EXIT_REVERSE_VIDEO_MODE
				db STRING_TERM
undefine(`BLANK', `UPPER_LEFT', `UPPER_MIDDLE', `UPPER_RIGHT')dnl
undefine(`LOWER_RIGHT', `LOWER_MIDDLE', `LOWER_LEFT')dnl
undefine(`ORANGE', `YELLOW', `RED', `GREEN', `BLUE')dnl
