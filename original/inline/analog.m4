; ---------------------------------------------------------------------------
; "ANALOG57"
; ---------------------------------------------------------------------------
l_inline_analog:
		cp	p_analog
		jp	nz, loc_129D

		ifCurrentPlanetNe(location_isthur, l_inline_dontKnowHow)
		ifCurrentRoomNe(room_isthur_computerCenter, l_inline_dontKnowHow)
		printMessage(s_printGibberish)
		setItemLocation(item_computerPage, location_isthur)

		jp	l_mainLoop
