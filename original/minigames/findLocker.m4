; ---------------------------------------------------------------------------
; "find locker" - Code to handle this mini game
; ---------------------------------------------------------------------------

define(`Y_COORD', `b')
define(`X_COORD', `c')
l_minigame_findLocker:
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	z, l_findLocker_printBoard

l_findLocker_dontKnowHow:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_findLocker_printBoard:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_storageSpace
		jp	nz, l_findLocker_dontKnowHow

		printMessage(s_minigame_findLocker_board)
		ld	hl, g_findLocker_drawCursor
		call	outputString

l_findLocker_printPrompt:
		ld	hl, g_findLocker_prompt
		call	outputString

l_findLocker_readCursorCoords:
		ld	hl, g_findLocker_cursorCoords
		ld	Y_COORD, (hl)				; b = y
		inc	hl
		ld	X_COORD, (hl)				; c = x

l_findLocker_getc:
		call	rawGetc
		cp	findLocker_keyDown
		jp	nz, l_findLocker_left
		push	af
		ld	a, Y_COORD
		add	a, 1
		ld	Y_COORD, a
		pop	af
		jp	loc_3D11
; ---------------------------------------------------------------------------

l_findLocker_left:
		cp	findLocker_keyLeft
		jp	nz, l_findLocker_right
		push	af
		ld	a, X_COORD
		sub	1
		ld	X_COORD, a
		pop	af
		jp	loc_3D11
; ---------------------------------------------------------------------------

l_findLocker_right:
		cp	findLocker_keyRight
		jp	nz, l_findLocker_up
		push	af
		ld	a, X_COORD
		add	a, 1
		ld	X_COORD, a
		pop	af
		jp	loc_3D11
; ---------------------------------------------------------------------------

l_findLocker_up:
		cp	findLocker_keyUp
		jp	nz, loc_3CCC
		push	af
		ld	a, Y_COORD
		sub	1
		ld	Y_COORD, a
		pop	af
		jp	loc_3D11
; ---------------------------------------------------------------------------

loc_3CCC:
		cp	findLocker_keyEnter
		jp	nz, l_findLocker_getc

		ld	hl, g_findLocker_cursorCoords
		ld	a, (hl)				; a = y coordinate
		cp	TO_COORD(4)
		jp	z, loc_3CDF			; if (y == 4) goto loc_3CDF
		cp	TO_COORD(11)
		jp	z, loc_3CF1			; if (y == 11) goto loc_3CF1

loc_3CDF:
		inc	hl
		ld	a, (hl)				; a = x coordinate
		cp	TO_COORD(37)
		jp	z, loc_3CE9			; if (x == 37) goto loc_3CE9 ...
		jp	loc_3D03			;   ... else goto loc_3D03
; ---------------------------------------------------------------------------

loc_3CE9:
		ld	a, gcsStorage_locker548
		ld	(g_gcsStorage_location), a
		jp	l_findLocker_return
; ---------------------------------------------------------------------------

loc_3CF1:
		inc	hl
		ld	a, (hl)				; a = x coordinate
		cp	TO_COORD(25)
		jp	z, loc_3CFB
		jp	loc_3D03
; ---------------------------------------------------------------------------

loc_3CFB:
		ld	a, gcsStorage_locker335
		ld	(g_gcsStorage_location), a
		jp	l_findLocker_return
; ---------------------------------------------------------------------------

loc_3D03:
		ld	a, gcsStorage_generic
		ld	(g_gcsStorage_location), a

l_findLocker_return:
		ld	hl, g_findLocker_clearScreen
		call	outputString
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_3D11:
		ld	a, Y_COORD
		sub	20h 					; 20h is 1Fh + one to rebase to 0
		rlca
		ld	e, a
		ld	d, 0
		ld	hl, g_lockerCoordinates
		add	hl, de
		ld	a, (hl)
		cp	0
		jp	z, l_findLocker_readCursorCoords

		sub	1
		cp	X_COORD
		jp	nc, l_findLocker_readCursorCoords

		inc	hl
		ld	a, (hl)
		cp	X_COORD
		jp	c, l_findLocker_readCursorCoords

		ld	hl, g_findLocker_cursorCoords
		ld	(hl), Y_COORD
		inc	hl
		ld	(hl), X_COORD
		ld	hl, g_findLocker_clearCursor
		call	outputString
		ld	hl, g_findLocker_drawCursor
		call	outputString
		ld	hl, g_findLocker_clearCursorCoords
		ld	(hl), Y_COORD
		inc	hl
		ld	(hl), X_COORD
		jp	l_findLocker_printPrompt
undefine(`Y_COORD', `X_COORD')
