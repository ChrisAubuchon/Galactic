l_pickup_lucinda:
		ld	hl, item_laser.location			; Can't take Lucinda without
		ld	a, (hl)					; carrying the laser
		cp	location_inventory
		jp	nz, l_pickup_beyondYourPower

		ld	hl, item_lucindaObject.location		; Check that lucinda is
		ld	a, (tmpPlanet)				; in the same location
		cp	(hl)
		jp	nz, l_pickup_beyondYourPower

		cp	location_isthur
		jp	c, loc_3861
		inc	hl					; hl = &lucindaObject.roomNumber
		ld	a, (g_currentRoomNumber)
		cp	(hl)
		jp	nz, l_pickup_beyondYourPower
		dec	hl					; hl = &lucindaObject.location

loc_3861:
		ld	(hl), location_withPlayer
		jp	l_printOkayAndLoop
