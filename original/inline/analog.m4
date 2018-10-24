; ---------------------------------------------------------------------------
; "ANALOG57"
; ---------------------------------------------------------------------------
l_inline_analog:
		cp	p_analog
		jp	nz, loc_129D

		ld	a, (g_currentPlanetNumber)
		cp	location_isthur
		jp	nz, l_inline_dontKnowHow

		ld	a, (g_currentRoomNumber)
		cp	room_isthur_computerCenter
		jp	nz, l_inline_dontKnowHow

		printMessage(s_printGibberish)
		ld	a, location_isthur
		ld	(item_computerPage.location), a
		jp	l_mainLoop
