l_inline_dig:
		cp	p_dig
		jp	nz, l_inline_analog

		ifItemNotInInventory(item_shovel, l_inline_unableToDoNow)
		ifCurrentPlanetNe(location_earth, l_inline_didntFindAnything)
		ifCurrentRoomNe(room_earth_wasteland_29, l_inline_didntFindAnything)

		ld	hl, (g_currentRoomData)
		ld	de, 13h				; room_t.down_room
		add	hl, de
		ld	(hl), room_earth_shelter

		; Probably supposed to be room_t.enter_room which is at 16h
		inc	hl				; room_t.cw_room
		ld	(hl), room_earth_shelter
		printMessage(s_bombShelterEntrance)
		jp	l_mainLoop
