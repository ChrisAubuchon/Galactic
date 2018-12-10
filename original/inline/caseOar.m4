; ---------------------------------------------------------------------------
; "case oar" command
; ---------------------------------------------------------------------------
l_inline_caseOar:
		ifCurrentPlanetEq(location_navier, loc_3EFF)

l_caseOar_dontKnowHow:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3EFF:
		ifCurrentRoomEq(room_navier_lakeEdge, l_caseOar_dontKnowHow)
		ifItemInInventory(item_rowboat, loc_3F19)

l_caseOar_noWayToDo:
		printMessage(s_noWayToDo)
		jp	l_mainLoop

loc_3F19:
		ifItemInInventory(item_oars, l_caseOar_noWayToDo)

		ld	hl, item_rowboat.floorMessageIndex
		ld	a, (hl)
		add	a, 1
		ld	(hl), a					; Increment floorMessageIndex

		setItemLocation(item_oars, location_none)
		decreaseItemCount(1)

		jp	l_mainLoopEntry
