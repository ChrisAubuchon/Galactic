; ---------------------------------------------------------------------------
; "case rope"
; ---------------------------------------------------------------------------
l_inline_caseRope:
		ifCurrentPlanetNe(location_navier, l_caseOar_dontKnowHow)

		ifCurrentRoomNe(room_navier_lakeEdge, l_caseOar_dontKnowHow)

		ifItemNotInLocation(item_rowboat, location_navier, l_caseOar_noWayToDo)

		ifItemNotInLocation(item_rope, location_navier, l_caseOar_noWayToDo)

		ld	hl, item_rowboat.floorMessageIndex
		ld	a, (hl)
		add	a, 2
		ld	(hl), a					; Add 2 to floorMessageIndex

		setItemLocation(item_rope, location_none)

		decreaseItemCount(1)

		jp	l_mainLoopEntry
