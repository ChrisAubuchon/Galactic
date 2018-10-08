l_pickup_troch:
		ld	hl, item_trochObject.location		; hl = &troch.location
		ld	a, (tmpPlanet)
		cp	(hl)
		jp	nz, l_pickup_beyondYourPower

		cp	location_isthur				; Seems like take troch always
		jp	c, loc_387E				; succeeds on earth and in the ship
		inc	hl					; hl = &troch.roomNumber
		ld	a, (g_currentRoomNumber)
		cp	(hl)
		jp	nz, l_pickup_beyondYourPower

		dec	hl					; hl = &troch.location

loc_387E:
		ld	(hl), location_withPlayer
		jp	l_printOkayAndLoop
