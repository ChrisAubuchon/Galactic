; ---------------------------------------------------------------------------
; "examine bag"
; - Actions
;   Set roomNumber and location of the geiger counter and laser to current
;   room number and planet
; ---------------------------------------------------------------------------
loc_1642:
		ld	b, p_examine
		ld	c, p_bag
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1695

		ld	a, (item_duffleBag.location)
		cp	location_inventory
		jp	z, loc_1660

		printMessage(s_notCarryingDuffle)
		jp	l_mainLoop

loc_1660:
		ld	a, (g_currentRoomNumber)
		ld	c, a
		cp	room_noPlanet_high
		jp	c, loc_1670

		ld	a, (g_currentPlanetNumber)
		ld	b, a
		jp	loc_1672
; ---------------------------------------------------------------------------

loc_1670:
		ld	b, location_ship

loc_1672:
		ld	a, (g_duffleBagExamined)
		cp	TRUE
		jp	z, loc_16E3

		ld	a, TRUE
		ld	(g_duffleBagExamined), a

		; Set location and roomNumber of laser
		ld	hl, item_laser.location
		ld	(hl), b
		inc	hl					; object_t.roomNumber
		ld	(hl), c

		; Set location and roomNumber of geiger counter
		ld	hl, item_geigerCounter.location
		ld	(hl), b
		inc	hl					; object_t.roomNumber
		ld	(hl), c

		printMessage(s_foundLaserAndGeiger)
		jp	l_mainLoop
; ---------------------------------------------------------------------------
