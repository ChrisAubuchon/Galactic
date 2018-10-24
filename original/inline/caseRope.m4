; ---------------------------------------------------------------------------
; "case rope"
; ---------------------------------------------------------------------------
l_inline_caseRope:
		ld	a, (g_currentPlanetNumber)
		cp	location_navier
		jp	nz, l_caseOar_dontKnowHow

		ld	a, (g_currentRoomNumber)
		cp	room_navier_lakeEdge
		jp	nz, l_caseOar_dontKnowHow

		ld	a, (item_rowboat.location)
		cp	location_navier
		jp	nz, l_caseOar_noWayToDo

		ld	a, (item_rope.location)
		cp	location_inventory
		jp	nz, l_caseOar_noWayToDo

		ld	hl, item_rowboat.floorMessageIndex
		ld	a, (hl)
		add	a, 2
		ld	(hl), a					; Add 2 to floorMessageIndex

		ld	a, location_none
		ld	(item_rope.location), a			; Mark rope as gone

		ld	a, (carriedItemCount)			; Adjust inventory count
		sub	1
		ld	(carriedItemCount), a

		jp	l_mainLoopEntry
