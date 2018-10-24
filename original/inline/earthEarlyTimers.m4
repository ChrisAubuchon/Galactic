; ---------------------------------------------------------------------------
; This code handles the commander's door locking/unlocking
; and the possibility of missing your launch
; ---------------------------------------------------------------------------
l_inline_earthEarlyTimers:
		ld	hl, (g_launchCounter_xxx)
		inc	hl
		ld	(g_launchCounter_xxx), hl

		; Skip everything if the high byte is set. This ensures that only the
		; first 255 moves are checked.
		;
		ld	a, h
		cp	0
		jp	nz, loc_393

		; Unlock the commander's door at 76 turns
		ld	a, l
		cp	76
		jp	nz, loc_344

		ld	a, (g_currentRoomNumber)

		; Mark commander's office door as unlocked
		push	af
		ld	a, room_earth_commanderFoyer
		ld	(g_currentRoomNumber), a
		call	getRoomData

		ld	hl, (g_currentRoomData)
		ld	de, 9
		add	hl, de
		ld	(hl), LO_BYTE(s_earth_cmdrDoorUnlocked)

		ld	de, 3
		add	hl, de					; room_t.east_room
		ld	(hl), room_earth_commanderOffice

		ld	de, 0Ah
		add	hl, de					; room_t.enter_room
		ld	(hl), room_earth_commanderOffice
		pop	af

		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	loc_393
; ---------------------------------------------------------------------------

loc_344:
		; Lock the commander's door at 82 turns (1 hour)
		cp	82
		jp	nz, loc_374
		ld	a, (g_currentRoomNumber)

		push	af
		ld	a, room_earth_commanderFoyer
		ld	(g_currentRoomNumber), a
		call	getRoomData

		ld	hl, (g_currentRoomData)
		ld	de, 9
		add	hl, de					; room_t.ambient_offset (LO)
		ld	(hl), LO_BYTE(s_earth_cmdrDoorLocked)

		ld	de, 3
		add	hl, de					; room_t.east_room
		ld	(hl), room_unableToDoNow
		ld	de, 0Ah
		add	hl, de					; room_t.enter_room
		ld	(hl), room_unableToDoNow
		pop	af

		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	loc_393
; ---------------------------------------------------------------------------

loc_374:
		; If the player is on planet earth and not inOrbit on turn 101,
		; then the launch was missed and it's game over. This does not
		; stop the player from being in orbit on turn 101 and then landing
		; back on earth.
		;
		cp	101
		jp	nz, loc_393

		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	nz, loc_393

		ld	a, (g_currentRoomNumber)
		cp	room_inOrbit
		jp	z, loc_393

		printMessage(s_launchedLate)
		jp	l_inline_playerDied
