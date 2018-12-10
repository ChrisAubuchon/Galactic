; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_room_earthCmdrOffice:
		ifVariableEq(gameWonFlagMaybe, TRUE, loc_4C0)
		ld	a, (g_currentRoomNumber)

		push	af

		setCurrentRoom(room_earth_supply)
		call	getRoomData

		ld	hl, (g_currentRoomData)
		ld	de, 3
		add	hl, de				; room_t.verbose_offset (LO)
		ld	(hl), LO_BYTE(s_verbose_earth_supply)

		setCurrentRoom(room_earth_parson)
		call	getRoomData

		ld	hl, (g_currentRoomData)
		ld	de, 3
		add	hl, de				; room_t.verbose_offset (LO)
		ld	(hl), LO_BYTE(s_verbose_earth_parsonsRoom_alt)

		; Change the location on all of the for sale objects to
		; location_earth
		;
		ld	hl, item_navComputer.location
		ld	de, 6				; sizeof(object_t)
		ld	(hl), location_earth
		add	hl, de
		ld	(hl), location_earth
		add	hl, de
		ld	(hl), location_earth
		add	hl, de
		ld	(hl), location_earth

		pop	af

		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock

loc_4C0:
		increaseScore(24)
		printMessage(s_galaxySalutes)
		ifItemNotInInventory(item_computerPage, loc_F1B)
		increaseScore(30)
		jp	loc_F1B
