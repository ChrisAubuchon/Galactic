; ---------------------------------------------------------------------------
; "launch boat"
; ---------------------------------------------------------------------------
l_inline_launchBoat:
		ld	a, (g_currentPlanetNumber)
		cp	location_navier
		jp	nz, l_caseOar_dontKnowHow

		ld	a, (g_currentRoomNumber)
		cp	room_navier_lakeEdge
		jp	nz, l_caseOar_dontKnowHow

		ld	a, (item_rowboat.location)
		cp	location_navier
		jp	nz, l_caseOar_noWayToDo

		ld	a, location_none
		ld	(item_rowboat.location), a

		ld	a, (g_navier_boatTiedFlag)
		cp	1
		jp	z, loc_3F9E

l_launchBoat_boatDrifted:
		printMessage(s_boatDriftedAway)
		jp	l_inline_forceGameEnd

loc_3F9E:
		printMessage(s_okay)
		ld	hl, (g_currentRoomData)
		ld	de, 0Ah
		add	hl, de			; hl = room_t.northRoom
		ld	(hl), room_navier_inRowboatOnLake
		jp	l_mainLoop
