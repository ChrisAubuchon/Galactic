; ---------------------------------------------------------------------------
; "tie boat"
; ---------------------------------------------------------------------------
l_inline_tieBoat:
		ifCurrentPlanetNe(location_navier, l_caseOar_dontKnowHow)
		loadCurrentRoom()
		jumpLt(room_navier_lakeEdge, l_caseOar_dontKnowHow)
		jumpGe(room_navier_shelf, l_caseOar_dontKnowHow)

		printMessage(s_okay)
		setVariable(g_navier_boatTiedFlag, TRUE)

		ld	a, (g_currentRoomNumber)
		push	af

		setCurrentRoom(room_navier_inRowboatOnLake)
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Ah				; hl = room_t.northRoom
		add	hl, de
		ld	(hl), room_unableToDoNow

		setCurrentRoom(room_navier_inRowboatNearShelf)
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Bh
		add	hl, de				; hl = room_t.southRoom
		ld	(hl), room_unableToDoNow
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_mainLoop
