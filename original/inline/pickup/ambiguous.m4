l_pickup_ambiguousItems:
                cp      p_paper
                jp      nz, loc_37B4

		; tmpObject == p_paper
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	nz, l_pickup_paper_changeObject
		ld	a, (g_currentRoomNumber)
		cp	room_earth_house
		jp	nz, l_pickup_paper_changeObject
		ld	hl, (g_currentRoomData)		; hl = &room_t.scoreBonus
		inc	hl				; hl = &room_t.roomFlags
		inc	hl				; hl = &room_t.verboseOffset (HI)
		ld	a, (hl)
		cp	HI_BYTE(s_verbose_house)
		jp	nz, l_pickup_paper_changeObject
		ld	(hl), HI_BYTE(s_terse_house)
		inc	hl
		ld	(hl), LO_BYTE(s_terse_house)
		printMessage(s_paperDisintegrates)
		jp	l_mainLoop

; If not in the deserted house on planet earth, change the object to
; p_pieceOfPaper and run through the pickup routine again.
;
l_pickup_paper_changeObject:
		ld	a, p_pieceOfPaper
		ld	(tmpObject), a
		jp	l_pickup_genericItem

loc_37B4:
                cp      p_crystal
                jp      nz, loc_37E6

		; tmpObject = Irridium Crystals
		ld	a, (g_currentPlanetNumber)
		cp	location_navier
		jp	nz, loc_37DE
		ld	a, (g_currentRoomNumber)
		cp	room_navier_boxCanyon
		jp	nz, loc_37DE
		ld	hl, item_irridium.location
		ld	a, (hl)
		cp	location_navier
		jp	nz, loc_37DE
		ld	(hl), location_none
		printMessage(s_irridiumIllusion)
		jp	l_mainLoop

loc_37DE:
		ld	a, p_statue
		ld	(tmpObject), a
		jp	l_pickup_genericItem

loc_37E6:
                cp      p_suit
                jp      nz, loc_3801

		; Handle the ambiguous "suit" input. pSuit is the default
		;
		ld	a, p_suit
		ld	(tmpObject), a
		call	isItemInRoom
		ld	a, b
		cp	1
		jp	z, l_pickup_genericItem
		ld	a, p_radsuit
		ld	(tmpObject), a
		jp	l_pickup_genericItem

loc_3801:
                cp      p_key
                jp      nz, loc_381C

		; Handle the ambiguous "key" input
		; Defaults to p_skeletonKey
		;
		ld	a, p_skeletonKey
		ld	(tmpObject), a
		call	isItemInRoom
		ld	a, b
		cp	1
		jp	z, l_pickup_genericItem
		ld	a, p_locker
		ld	(tmpObject), a
		jp	l_pickup_genericItem

loc_381C:
		; Handle ambiguous "disk" input
		; Order:
		;	p_diskA
		;	p_diskB
		;	p_repairDisk
		;
		ld	a, p_diskA
		ld	(tmpObject), a
		call	isItemInRoom
		ld	a, b
		cp	1
		jp	z, l_pickup_genericItem

		ld	a, p_diskB
		ld	(tmpObject), a
		call	isItemInRoom
		ld	a, b
		cp	1
		jp	z, l_pickup_genericItem

		ld	a, p_repairDisk
		ld	(tmpObject), a
		jp	l_pickup_genericItem
