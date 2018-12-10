; ---------------------------------------------------------------------------
; "untie boat"
; ---------------------------------------------------------------------------
l_inline_untieBoat:
		ifCurrentPlanetNe(location_navier, l_caseOar_dontKnowHow)
		loadCurrentRoom()
		jumpLt(room_navier_lakeEdge, l_caseOar_dontKnowHow)
		jumpGe(room_navier_airlock, l_caseOar_dontKnowHow)
		jumpLt(room_navier_inRowboatOnLake, l_untieBoat_fail)
		jumpGe(room_navier_shelf, l_untieBoat_fail)
		jp	l_untieBoat_success

; ---------------------------------------------------------------------------
l_untieBoat_fail:
		printMessage(s_boatDriftedAway)
		setVariable(g_navier_boatTiedFlag, FALSE)

		ld	a, (g_currentRoomNumber)
		push	af

		setCurrentRoom(room_navier_lakeEdge)
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Ah
		add	hl, de				; room_t.northRoom
		ld	(hl), room_cantSwim

		setCurrentRoom(room_navier_shelf)
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Bh
		add	hl, de				; room_t.southRoom
		ld	(hl), room_cantSwim
		pop	af

		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_untieBoat_success:
		printMessage(s_okay)
		setVariable(g_navier_boatTiedFlag, FALSE)

		ld	a, (g_currentRoomNumber)
		push	af

		setCurrentRoom(room_navier_inRowboatOnLake)
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Ah
		add	hl, de					; room_t.northRoom
		ld	(hl), room_navier_inRowboatNearShelf

		setCurrentRoom(room_navier_inRowboatNearShelf)
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Bh
		add	hl, de					; room_t.southRoom
		ld	(hl), room_navier_inRowboatOnLake
		pop	af

		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_mainLoop
