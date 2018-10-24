l_inline_read:
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	z, l_doRead_earth
		cp	location_gcs
		jp	z, l_doRead_gcs

l_doRead_nothing:
		printMessage(s_nothingToRead)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_doRead_earth:
		ld	a, (g_currentRoomNumber)
		cp	room_earth_house
		jp	z, l_doRead_desertedHouse
		cp	room_earth_hallway_low
		jp	c, l_doRead_nothing
		cp	room_earth_hallway_high
		jp	nc, l_doRead_nothing
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

l_doRead_desertedHouse:
		ld	hl, (g_currentRoomData)		; hl = &scoreBonus
		ld	de, 3
		add	hl, de				; hl = &verbose (low byte)
		ld	a, (hl)
		cp	LO_BYTE(s_verbose_house)	; If the verbose message is original, then
		jp	nz, l_doRead_nothing		; the paper can be read
		printMessage(s_pirateLivesMessage)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_doRead_gcs:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_readable_low
		jp	nc, loc_3C0B

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
