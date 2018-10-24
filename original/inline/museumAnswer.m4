; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_museumAnswer:
		cp	p_museumAnswer
		jp	nz, l_inline_dig

		ld	a, (g_currentPlanetNumber)
		cp	location_solomaw
		jp	nz, l_inline_nothingHappens

		ld	a, (g_currentRoomNumber)
		cp	room_solomaw_museumEntrance
		jp	nz, l_inline_nothingHappens

		ld	hl, (g_currentRoomData)
		ld	de, 3
		add	hl, de
		ld	a, (hl)				; room_t.verbose_offset (LO)
		cp	LO_BYTE(s_verbose_solomaw_museumEntrance)
		jp	nz, l_inline_nothingHappens
		ld	(hl), LO_BYTE(s_terse_solomaw_museumEntrance)
		ld	de, 7
		add	hl, de				; room_t.north_room
		ld	(hl), room_solomaw_museum
		printMessage(s_done)
		jp	l_mainLoop
