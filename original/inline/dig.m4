l_inline_dig:
		cp	p_dig
		jp	nz, l_inline_analog

		ld	a, (g_itemList.location)
		cp	location_inventory
		jp	nz, l_inline_unableToDoNow

		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	nz, l_inline_didntFindAnything

		ld	a, (g_currentRoomNumber)
		cp	room_earth_wasteland_29
		jp	nz, l_inline_didntFindAnything

		ld	hl, (g_currentRoomData)
		ld	de, 13h				; room_t.down_room
		add	hl, de
		ld	(hl), room_earth_shelter

		; Probably supposed to be room_t.enter_room which is at 16h
		inc	hl				; room_t.cw_room
		ld	(hl), room_earth_shelter
		printMessage(s_bombShelterEntrance)
		jp	l_mainLoop
