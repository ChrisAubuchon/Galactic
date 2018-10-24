; ---------------------------------------------------------------------------
; "untie boat"
; ---------------------------------------------------------------------------
l_inline_untieBoat:
		ld	a, (g_currentPlanetNumber)
		cp	location_navier
		jp	nz, l_caseOar_dontKnowHow

		ld	a, (g_currentRoomNumber)
		cp	room_navier_lakeEdge
		jp	c, l_caseOar_dontKnowHow

		cp	room_navier_airlock
		jp	nc, l_caseOar_dontKnowHow

		cp	room_navier_inRowboatOnLake
		jp	c, l_untieBoat_fail

		cp	room_navier_shelf
		jp	nc, l_untieBoat_fail
		jp	l_untieBoat_success
; ---------------------------------------------------------------------------
l_untieBoat_fail:
		printMessage(s_boatDriftedAway)

		ld	a, 0
		ld	(g_navier_boatTiedFlag), a
		ld	a, (g_currentRoomNumber)

		push	af

		ld	a, room_navier_lakeEdge
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Ah
		add	hl, de				; room_t.northRoom
		ld	(hl), room_cantSwim

		ld	a, room_navier_shelf
		ld	(g_currentRoomNumber), a
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

		ld	a, 0
		ld	(g_navier_boatTiedFlag), a
		ld	a, (g_currentRoomNumber)

		push	af
		ld	a, (room_navier_inRowboatOnLake)
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Ah
		add	hl, de					; room_t.northRoom
		ld	(hl), room_navier_inRowboatNearShelf

		ld	a, room_navier_inRowboatNearShelf
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Bh
		add	hl, de					; room_t.southRoom
		ld	(hl), room_navier_inRowboatOnLake
		pop	af

		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_mainLoop
