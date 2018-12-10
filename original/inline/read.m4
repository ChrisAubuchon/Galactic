l_inline_read:
		loadCurrentPlanet()
		jumpEq(location_earth, l_read_earth)
		jumpEq(location_gcs, l_read_gcs)

l_read_nothing:
		printMessage(s_nothingToRead)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_read_earth:
		loadCurrentRoom()
		jumpEq(room_earth_house, l_read_desertedHouse)
		jumpLt(room_earth_hallway_low, l_read_nothing)
		jumpGe(room_earth_hallway_high, l_read_nothing)

		sub	room_earth_hallway_low
		rlca
		ld	e, a
		ld	d, 0
		ld	hl, g_earthReadList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_read_desertedHouse:
		ld	hl, (g_currentRoomData)		; hl = &scoreBonus
		ld	de, 3
		add	hl, de				; hl = &verbose (low byte)
		ld	a, (hl)
		cp	LO_BYTE(s_verbose_house)	; If the verbose message is original, then
		jp	nz, l_read_nothing		; the paper can be read
		printMessage(s_pirateLivesMessage)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_read_gcs:
		loadCurrentRoom()
		jumpGe(room_gcs_readable_low, loc_3C0B)

		printMessage(s_nothingToReadHere)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3C0B:
		sub	room_gcs_readable_low
		rlca
		ld	e, a
		ld	d, 0
		ld	hl, g_gcsReadList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	l_mainLoop
