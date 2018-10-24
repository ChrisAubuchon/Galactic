; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_setCourse:
		ld	a, (g_currentRoomNumber)
		cp	room_inOrbit
		jp	z, loc_30E2
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop

loc_30E2:
		ld	a, (g_computerInstalledFlag)
		cp	0
		jp	nz, loc_30F4

l_inline_unableToDoNow:
		printMessage(s_unableToDoNow)
		jp	l_mainLoop

loc_30F4:
		ld	a, (g_crew_lyle.hiredFlag)
		cp	isHired
		jp	z, l_inline_unableToDoNow
		printMessage(s_enterCoordinates)
		call	readString
		call	tokenizeString
		ld	a, b
		cp	1
		jp	z, loc_3119

loc_310F:
		printMessage(s_dontUnderstand)
		jp	l_mainLoop

loc_3119:
		ld	de, g_firstWord
		ld	hl, g_tmpAbbreviationBuffer
		ld	bc, 5
		call	abbreviateWord
		ld	b, 5
		ld	hl, g_tmpAbbreviationBuffer

loc_312A:
		ld	a, (hl)
		inc	hl
		cp	2Ch ; ','
		jp	z, loc_3140
		cp	2Dh ; '-'
		jp	z, loc_3140
		cp	30h ; '0'
		jp	c, loc_310F
		cp	40h ; '@'
		jp	nc, loc_310F

loc_3140:
		dec	b
		ld	a, b
		cp	0
		jp	nz, loc_312A
		call	searchVocabulary
		ld	a, (playerCommand)
		sub	27h ; '''
		cp	0
		jp	z, loc_315F
		cp	6
		jp	nc, loc_315F
		ld	(g_shipDestination), a
		jp	loc_3164
; ---------------------------------------------------------------------------

loc_315F:
		ld	a, 0
		ld	(g_shipDestination), a

loc_3164:
		printMessage(s_coursePlotted)
		jp	l_mainLoop
