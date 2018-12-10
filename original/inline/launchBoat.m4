; ---------------------------------------------------------------------------
; "launch boat"
; ---------------------------------------------------------------------------
l_inline_launchBoat:
		ifCurrentPlanetNe(location_navier, l_caseOar_dontKnowHow)
		ifCurrentRoomNe(room_navier_lakeEdge, l_caseOar_dontKnowHow)
		ifItemNotInLocation(item_rowboat, location_navier, l_caseOar_noWayToDo)
		setItemLocation(item_rowboat, location_none)
		ifVariableEq(g_navier_boatTiedFlag, 1, loc_3F9E)

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
