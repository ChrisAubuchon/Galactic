; ---------------------------------------------------------------------------
; "tie boat"
; ---------------------------------------------------------------------------
l_inline_tieBoat:
		ld	a, (g_currentPlanetNumber)
		cp	location_navier
		jp	nz, l_caseOar_dontKnowHow

		ld	a, (g_currentRoomNumber)
		cp	room_navier_lakeEdge
		jp	c, l_caseOar_dontKnowHow

		cp	room_navier_shelf
		jp	nc, l_caseOar_dontKnowHow

		printMessage(s_okay)
		ld	a, 1
		ld	(g_navier_boatTiedFlag), a

		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, room_navier_inRowboatOnLake
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Ah				; hl = room_t.northRoom
		add	hl, de
		ld	(hl), room_unableToDoNow

		ld	a, room_navier_inRowboatNearShelf
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Bh
		add	hl, de				; hl = room_t.southRoom
		ld	(hl), room_unableToDoNow
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_mainLoop
