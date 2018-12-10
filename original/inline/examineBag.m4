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

		ifItemInInventory(item_duffleBag, loc_1660)
		printMessage(s_notCarryingDuffle)
		jp	l_mainLoop

loc_1660:
		loadCurrentRoom()
		ld	c, a

		jumpLt(room_noPlanet_high, loc_1670)
		loadCurrentPlanet()
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
