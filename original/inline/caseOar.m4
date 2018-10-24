; ---------------------------------------------------------------------------
; "case oar" command
; ---------------------------------------------------------------------------
l_inline_caseOar:
		ld	a, (g_currentPlanetNumber)
		cp	location_navier
		jp	z, loc_3EFF

l_caseOar_dontKnowHow:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3EFF:
		ld	a, (g_currentRoomNumber)
		cp	room_navier_lakeEdge
		jp	nz, l_caseOar_dontKnowHow
		ld	a, (item_rowboat.location)
		cp	location_navier
		jp	z, loc_3F19

l_caseOar_noWayToDo:
		printMessage(s_noWayToDo)
		jp	l_mainLoop

loc_3F19:
		ld	a, (item_oars.location)
		cp	location_inventory
		jp	nz, l_caseOar_noWayToDo

		ld	hl, item_rowboat.floorMessageIndex
		ld	a, (hl)
		add	a, 1
		ld	(hl), a					; Increment floorMessageIndex

		ld	a, location_none
		ld	(item_oars.location), a

		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	l_mainLoopEntry
