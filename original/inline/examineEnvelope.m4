; ---------------------------------------------------------------------------
; "examine envelope"
; ---------------------------------------------------------------------------
loc_1705:
		ld	b, p_examine
		ld	c, p_envelope
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1747

		ld	a, (item_largeEnvelope.location)
		cp	location_inventory
		jp	nz, loc_16D1

		ld	a, (g_currentRoomNumber)
		ld	c, a
		cp	room_noPlanet_high
		jp	nc, loc_1727

		ld	b, location_ship
		jp	loc_172B
; ---------------------------------------------------------------------------

loc_1727:
		ld	a, (g_currentPlanetNumber)
		ld	b, a

loc_172B:
		ld	hl, item_cpmDiskA.location
		ld	a, (hl)
		cp	location_none
		jp	nz, loc_16E3

		ld	(hl), b
		inc	hl
		ld	(hl), c

		ld	hl, item_cpmDiskB.location
		ld	(hl), b
		inc	hl
		ld	(hl), c

		printMessage(s_findTwoDisks)
		jp	l_mainLoop
