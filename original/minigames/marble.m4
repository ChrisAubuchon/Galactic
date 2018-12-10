dnl Local macros
define(`BOARD_INITIAL',		`5Ah')dnl
define(`BOARD_WIN',		`0FFh')dnl
define(`BOARD_LOSE',		`0')dnl
define(`UPPER_LEFT_SET',	`80h')dnl
define(`UPPER_MIDDLE_SET',	`40h')dnl
define(`UPPER_RIGHT_SET',	`20h')dnl
define(`MIDDLE_LEFT_SET',	`10h')dnl
define(`MIDDLE_RIGHT_SET',	`8')dnl
define(`LOWER_LEFT_SET',	`4')dnl
define(`LOWER_MIDDLE_SET',	`2')dnl
define(`LOWER_RIGHT_SET',	`1')dnl
define(`UPPER_LEFT_CLEAR',	`7Fh')dnl
define(`UPPER_MIDDLE_CLEAR',	`0BFh')dnl
define(`UPPER_RIGHT_CLEAR',	`0DFh')dnl
define(`MIDDLE_LEFT_CLEAR',	`0EFh')dnl
define(`MIDDLE_RIGHT_CLEAR',	`0F7h')dnl
define(`LOWER_LEFT_CLEAR',	`0FBh')dnl
define(`LOWER_MIDDLE_CLEAR',	`0FDh')dnl
define(`LOWER_RIGHT_CLEAR',	`0FEh')dnl
; ---------------------------------------------------------------------------
; Marble mini game
; ---------------------------------------------------------------------------
l_minigame_marble:
		ld	hl, g_marble_prompt
		call	outputString
		ld	hl, g_inputBuffer

l_marble_getString:
		call	getc
		ld	(hl), a
		inc	hl
		cp	ascii_cr
		jp	z, l_marble_parseString
		jp	l_marble_getString

l_marble_parseString:
		ld	a, (g_inputBuffer)
		cp	4Ch ; 'L'
		jp	z, l_marble_changeLeft
		cp	31h ; '1'
		jp	z, l_marble_changeLeft
		cp	4Dh ; 'M'
		jp	z, l_marble_changeUpperMiddle
		cp	32h ; '2'
		jp	z, l_marble_changeUpperMiddle
		cp	52h ; 'R'
		jp	z, l_marble_changeUpperRight
		cp	33h ; '3'
		jp	z, l_marble_changeUpperRight
		jp	l_marble_checkBoard
; ---------------------------------------------------------------------------

l_marble_changeLeft:
		ld	hl, g_marble_cursorUpperLeft
		call	outputString

		ld	a, (g_marble_boardValue)
		and	UPPER_LEFT_SET
		cp	0
		jp	z, l_marble_setUpperLeft

		ld	a, (g_marble_boardValue)
		and	UPPER_LEFT_CLEAR
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_clearColor
		call	outputString
		jp	l_marble_changeLowerLeft
; ---------------------------------------------------------------------------

l_marble_setUpperLeft:
		ld	a, (g_marble_boardValue)
		or	UPPER_LEFT_SET
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_setColor
		call	outputString
		jp	l_marble_changeMiddleLeft
; ---------------------------------------------------------------------------

l_marble_changeUpperMiddle:
		ld	hl, g_marble_cursorUpperMiddle
		call	outputString

		ld	a, (g_marble_boardValue)
		and	UPPER_MIDDLE_SET
		cp	0
		jp	z, l_marble_setUpperMiddle
		ld	a, (g_marble_boardValue)

		and	UPPER_MIDDLE_CLEAR
		ld	(g_marble_boardValue), a

		ld	hl, g_marble_clearColor
		call	outputString
		jp	l_marble_changeMiddleRight
; ---------------------------------------------------------------------------

l_marble_setUpperMiddle:
		ld	a, (g_marble_boardValue)
		or	UPPER_MIDDLE_SET
		ld	(g_marble_boardValue), a

		ld	hl, g_marble_setColor
		call	outputString
		jp	l_marble_changeMiddleLeft
; ---------------------------------------------------------------------------

l_marble_changeUpperRight:
		ld	hl, g_marble_cursorUpperRight
		call	outputString
		ld	a, (g_marble_boardValue)
		and	UPPER_RIGHT_SET
		cp	0
		jp	z, l_marble_setUpperRight
		ld	a, (g_marble_boardValue)
		and	UPPER_RIGHT_CLEAR
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_clearColor
		call	outputString
		jp	l_marble_changeMiddleRight
; ---------------------------------------------------------------------------

l_marble_setUpperRight:
		ld	a, (g_marble_boardValue)
		or	UPPER_RIGHT_SET
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_setColor
		call	outputString
		jp	l_marble_changeLowerRight
; ---------------------------------------------------------------------------

l_marble_changeMiddleLeft:
		ld	hl, g_marble_cursorMiddleLeft
		call	outputString

		ld	a, (g_marble_boardValue)
		and	MIDDLE_LEFT_SET
		cp	0
		jp	z, l_marble_setMiddleLeft

		ld	a, (g_marble_boardValue)
		and	MIDDLE_LEFT_CLEAR
		ld	(g_marble_boardValue), a

		ld	hl, g_marble_clearColor
		call	outputString
		jp	l_marble_changeLowerMiddle
; ---------------------------------------------------------------------------

l_marble_setMiddleLeft:
		ld	a, (g_marble_boardValue)
		or	MIDDLE_LEFT_SET
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_setColor
		call	outputString
		jp	l_marble_changeLowerLeft
; ---------------------------------------------------------------------------

l_marble_changeMiddleRight:
		ld	hl, g_marble_cursorMiddleRight
		call	outputString
		ld	a, (g_marble_boardValue)
		and	MIDDLE_RIGHT_SET
		cp	0
		jp	z, l_marble_setMiddleRight
		ld	a, (g_marble_boardValue)
		and	MIDDLE_RIGHT_CLEAR
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_clearColor
		call	outputString
		jp	l_marble_changeLowerRight
; ---------------------------------------------------------------------------

l_marble_setMiddleRight:
		ld	a, (g_marble_boardValue)
		or	MIDDLE_RIGHT_SET
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_setColor
		call	outputString
		jp	l_marble_changeLowerMiddle
; ---------------------------------------------------------------------------

l_marble_changeLowerLeft:
		ld	hl, g_marble_cursorLowerLeft
		call	outputString
		ld	a, (g_marble_boardValue)
		and	LOWER_LEFT_SET
		cp	0
		jp	z, l_marble_setLowerLeft
		ld	a, (g_marble_boardValue)
		and	LOWER_LEFT_CLEAR
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_clearColor
		call	outputString
		jp	l_marble_checkBoard
; ---------------------------------------------------------------------------

l_marble_setLowerLeft:
		ld	a, (g_marble_boardValue)
		or	LOWER_LEFT_SET
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_setColor
		call	outputString
		jp	l_marble_checkBoard
; ---------------------------------------------------------------------------

l_marble_changeLowerMiddle:
		ld	hl, g_marble_cursorLowerMiddle
		call	outputString

		ld	a, (g_marble_boardValue)
		and	LOWER_MIDDLE_SET
		cp	0
		jp	z, l_marble_setLowerMiddle

		ld	a, (g_marble_boardValue)
		and	LOWER_MIDDLE_CLEAR
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_clearColor

		call	outputString
		jp	l_marble_checkBoard
; ---------------------------------------------------------------------------

l_marble_setLowerMiddle:
		ld	a, (g_marble_boardValue)
		or	LOWER_MIDDLE_SET

		ld	(g_marble_boardValue), a
		ld	hl, g_marble_setColor
		call	outputString
		jp	l_marble_checkBoard
; ---------------------------------------------------------------------------

l_marble_changeLowerRight:
		ld	hl, g_marble_cursorLowerRight
		call	outputString
		ld	a, (g_marble_boardValue)
		and	LOWER_RIGHT_SET
		cp	0
		jp	z, l_marble_setLowerRight
		ld	a, (g_marble_boardValue)
		and	LOWER_RIGHT_CLEAR
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_clearColor
		call	outputString
		jp	l_marble_checkBoard
; ---------------------------------------------------------------------------

l_marble_setLowerRight:
		ld	a, (g_marble_boardValue)
		or	LOWER_RIGHT_SET
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_setColor
		call	outputString

l_marble_checkBoard:
		ld	a, (g_marble_boardValue)
		cp	0FFh
		jp	z, l_marble_success

		cp	0
		jp	z, l_marble_fail

		ld	a, (g_marble_counterOnes)
		cp	30h ; '0'
		jp	z, loc_452C

		sub	1
		ld	(g_marble_counterOnes), a
		jp	loc_453E
; ---------------------------------------------------------------------------

loc_452C:
		ld	a, (g_marble_counterTens)
		cp	30h ; '0'
		jp	z, l_marble_fail
		sub	1
		ld	(g_marble_counterTens), a
		ld	a, 39h ; '9'
		ld	(g_marble_counterOnes), a

loc_453E:
		ld	hl, g_marble_counterString
		call	outputString
		jp	l_minigame_marble
; ---------------------------------------------------------------------------

l_marble_success:
		ld	a, BOARD_INITIAL
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_counterTens
		ld	(hl), 31h ; '1'
		inc	hl
		ld	(hl), 30h ; '0'
		ld	a, (item_cpmDiskA.location)
		cp	location_inventory
		jp	nz, loc_45CE

		ld	a, (item_cpmDiskB.location)
		cp	location_inventory
		jp	nz, loc_45CE

		ld	a, (item_repairDisk.location)
		cp	location_inventory
		jp	nz, loc_45CE

		ld	a, TRUE
		ld	(byte_49B0), a

		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_isthur_computerCenterTrigger), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a

		ld	a, location_isthur
		ld	(g_currentPlanetNumber), a

		ld	a, room_isthur_gammaControl
		ld	(g_currentRoomNumber), a
		call	getRoomData

		ld	hl, (g_currentRoomData)
		ld	de, 0Ch
		add	hl, de					; room_t.east_room
		ld	(hl), room_isthur_computerCenter

		; XXX - I think this is a bug. 0Ch + 8 = 14h which is the offset
		; 	of the cw_room member of the room_t structure. I think 
		;	it's supposed to be 0Ah to change the enter_room member.
		ld	de, 8
		add	hl, de					; room_t.cw_room
		ld	(hl), room_isthur_computerCenter

		ld	a, location_gcs
		ld	(g_currentPlanetNumber), a
		ld	a, room_gcs_computerCenter
		ld	(g_currentRoomNumber), a
		call	getRoomData

		ld	hl, g_findLocker_clearScreen
		call	outputString

		printMessage(s_disksFixed)

		increaseScore(12)
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_45CE:
		ld	hl, g_findLocker_clearScreen
		call	outputString
		printMessage(s_verbose_gcsComputerCenter)

		ld	a, (g_gcs_professorState)
		cp	gcsProfessor_pacing
		jp	nz, l_marble_success_noProf

		printMessage(s_professorPacing)
		printMessage(s_professorRepeating)

l_marble_success_noProf:
		ld	a, room_gcs_computerCenter
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

l_marble_fail:
		ld	a, BOARD_INITIAL
		ld	(g_marble_boardValue), a
		ld	hl, g_marble_counterTens
		ld	(hl), 31h ; '1'
		inc	hl
		ld	(hl), 30h ; '0'
		ld	hl, g_findLocker_clearScreen
		call	outputString
		printMessage(s_securityArrests)

		ld	a, room_gcs_headquarters
		ld	(g_currentRoomNumber), a
		call	getRoomData

		decreaseScore(10)
		printMessage(s_gcs_hqArrested1)
		printMessage(s_gcs_hqArrested2)
		jp	l_mainLoopEntry

; ---------------------------------------------------------------------------
g_marble_clearColor:	db ENTER_GRAPHICS_MODE
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db CURSOR_DOWN
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db CURSOR_DOWN
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db key_ELLIPSIS
			db EXIT_GRAPHICS_MODE
			db KEYBOARD_ENABLE
			db STRING_TERM
g_marble_setColor:	db ENTER_REVERSE_VIDEO_MODE
			db ' ', ' ', ' ', ' ', ' ', ' '
			db CURSOR_DOWN
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db ' ', ' ', ' ', ' ', ' ', ' '
			db CURSOR_DOWN
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db CURSOR_LEFT
			db ' ', ' ', ' ', ' ', ' ', ' '
			db EXIT_REVERSE_VIDEO_MODE
			db KEYBOARD_ENABLE
			db STRING_TERM
g_marble_cursorUpperLeft:	db KEYBOARD_DISABLE
				db SET_CURSOR_ADDRESS(7, 21)
				db STRING_TERM
g_marble_cursorUpperMiddle:	db KEYBOARD_DISABLE
				db SET_CURSOR_ADDRESS(7, 31)
				db STRING_TERM
g_marble_cursorUpperRight:	db KEYBOARD_DISABLE
				db SET_CURSOR_ADDRESS(7, 41)
				db STRING_TERM
g_marble_cursorMiddleLeft:	db KEYBOARD_DISABLE
				db SET_CURSOR_ADDRESS(12, 26)
				db STRING_TERM
g_marble_cursorMiddleRight:	db KEYBOARD_DISABLE
				db SET_CURSOR_ADDRESS(12, 36)
				db STRING_TERM
g_marble_cursorLowerLeft:	db KEYBOARD_DISABLE
				db SET_CURSOR_ADDRESS(17, 21)
				db STRING_TERM
g_marble_cursorLowerMiddle:	db KEYBOARD_DISABLE
				db SET_CURSOR_ADDRESS(17, 31)
				db STRING_TERM
g_marble_cursorLowerRight:	db KEYBOARD_DISABLE
				db SET_CURSOR_ADDRESS(17, 41)
				db STRING_TERM
g_marble_prompt:		db SET_CURSOR_ADDRESS(23, 21)
				db ERASE_EOL
				db SET_CURSOR_ADDRESS(23, 23)
				db '?', ' ', ' '
				db STRING_TERM
g_marble_boardValue:		db BOARD_INITIAL
g_marble_counterString:		db SET_CURSOR_ADDRESS(21, 26)
				db ENTER_REVERSE_VIDEO_MODE
g_marble_counterTens:		db '1'
g_marble_counterOnes:		db '0'
				db EXIT_REVERSE_VIDEO_MODE
				db STRING_TERM
undefine(`BOARD_INITIAL', `BOARD_WIN', `BOARD_LOSE')dnl
undefine(`UPPER_LEFT_SET', `UPPER_LEFT_CLEAR')dnl
undefine(`UPPER_MIDDLE_SET', `UPPER_MIDDLE_CLEAR')dnl
undefine(`UPPER_RIGHT_SET', `UPPER_RIGHT_CLEAR')dnl
undefine(`MIDDLE_LEFT_SET', `MIDDLE_LEFT_CLEAR')dnl
undefine(`MIDDLE_RIGHT_SET', `MIDDLE_RIGHT_CLEAR')dnl
undefine(`LOWER_LEFT_SET', `LOWER_LEFT_CLEAR')dnl
undefine(`LOWER_MIDDLE_SET', `LOWER_MIDDLE_CLEAR')dnl
undefine(`LOWER_RIGHT_SET', `LOWER_RIGHT_CLEAR')dnl

