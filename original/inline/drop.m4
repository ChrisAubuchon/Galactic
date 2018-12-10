; ---------------------------------------------------------------------------
; Handle "drop" action. The object ID switch can be reordered
; ---------------------------------------------------------------------------
l_inline_drop:
		ld	(tmpObject), a
		ld	a, (g_currentRoomNumber)
		cp	room_noPlanet_high
		jp	nc, l_drop_onPlanet

		; If the current room number < room_noPlanet_high then
		; the destination location is location_ship
		;
		ld	a, location_ship
		ld	(tmpPlanet), a
		jp	l_drop_lucindaFixup

l_drop_onPlanet:
		ld	a, (g_currentPlanetNumber)
		ld	(tmpPlanet), a

l_drop_lucindaFixup:
		ld	a, (tmpObject)
		cp	p_lucinda
		jp	nz, l_drop_trochFixup

		; The object ID for Lucinda is different than the token ID
		ld	a, p_lucindaObject
		ld	(tmpObject), a
		jp	l_drop_checkCarrying
; ---------------------------------------------------------------------------

l_drop_trochFixup:
		cp	p_troch
		jp	nz, l_drop_paperFixup

		; The object ID for Troch is different than the token ID
		ld	a, token_trochObject
		ld	(tmpObject), a
		jp	l_drop_checkCarrying
; ---------------------------------------------------------------------------

l_drop_paperFixup:
		cp	p_paper
		jp	nz, loc_3963

		; The object ID for the Piece of Paper is different
		ld	a, p_pieceOfPaper
		ld	(tmpObject), a
		jp	l_drop_checkCarrying
; ---------------------------------------------------------------------------

loc_3963:
		cp	p_crystal
		jp	nz, loc_398A

l_drop_crystalStatue:
		ld	hl, item_crystalStatue.location
		ld	a, (hl)
		cp	location_inventory
		jp	nz, l_drop_notCarrying

		; Don't drop the crystal statue
		ld	(hl), location_none
		printMessage(s_drop_crystalStatue)
		decreaseScore(15)
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_398A:
		cp	p_statue
		jp	z, l_drop_crystalStatue

		; Handle ambiguous "suit"
		cp	p_suit
		jp	nz, l_drop_ambiguous_key

		ld	a, p_psuit
		ld	(tmpObject), a
		ld	hl, item_pSuit.location
		ld	a, (hl)
		cp	location_inventory
		jp	z, l_drop_checkCarrying

		ld	a, p_radsuit
		ld	(tmpObject), a
		jp	l_drop_checkCarrying
; ---------------------------------------------------------------------------

l_drop_ambiguous_key:
		cp	p_key
		jp	nz, l_drop_ambiguous_disk
		ld	a, p_skeletonKey
		ld	(tmpObject), a
		ld	hl, item_skeletonKey.location
		ld	a, (hl)
		cp	location_inventory
		jp	z, l_drop_checkCarrying
		ld	a, p_locker			; Locker key
		ld	(tmpObject), a
		jp	l_drop_checkCarrying
; ---------------------------------------------------------------------------

l_drop_ambiguous_disk:
		cp	p_disk
		jp	nz, l_drop_checkCarrying
		ld	a, p_diskA
		ld	(tmpObject), a
		ld	hl, item_cpmDiskA.location
		ld	a, (hl)
		cp	location_inventory
		jp	z, l_drop_checkCarrying
		ld	a, p_diskB
		ld	(tmpObject), a
		ld	hl, item_cpmDiskB.location
		ld	a, (hl)
		cp	location_inventory
		jp	z, l_drop_checkCarrying
		ld	a, p_repairDisk
		ld	(tmpObject), a

l_drop_checkCarrying:
		ld	a, (tmpObject)
		cp	p_low_item
		jp	c, l_drop_notCarrying
		cp	p_high_item
		jp	nc, l_drop_notCarrying
		sub	p_low_item
		ld	e, a
		ld	d, 0
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		add	hl, hl
		ex	de, hl
		ld	hl, g_itemList.location
		add	hl, de
		ld	a, (hl)
		cp	location_inventory
		jp	z, l_drop_checkSuitObject
		cp	location_withPlayer
		jp	z, l_drop_checkSuitObject
		jp	l_drop_notCarrying
; ---------------------------------------------------------------------------

l_drop_checkSuitObject:
		ld	a, (tmpObject)
		cp	p_psuit
		jp	z, l_drop_checkWearingSuit
		cp	p_radsuit
		jp	z, l_drop_checkWearingSuit

l_drop_checkDecrement:
		ld	a, (tmpPlanet)
		ld	(hl), a
		inc	hl
		ld	a, (g_currentRoomNumber)
		ld	(hl), a
		ld	a, (tmpObject)
		cp	token_trochObject
		jp	z, l_drop_dontDecrementItemCount

		cp	p_lucindaObject
		jp	z, l_drop_dontDecrementItemCount

		ld	a, (carriedItemCount)
		cp	0
		jp	z, l_drop_dontDecrementItemCount

		sub	1
		ld	(carriedItemCount), a

l_drop_dontDecrementItemCount:
		jp	l_removeSuit_okayAndLoop
; ---------------------------------------------------------------------------

l_drop_checkWearingSuit:
		ld	a, (g_wearingSuitFlag)
		cp	FALSE
		jp	z, loc_3A5F
		jp	l_inline_unableToDoNow
; ---------------------------------------------------------------------------

l_drop_notCarrying:
		printMessage(s_notCarrying)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3A5F:
		ld	a, (tmpObject)
		cp	p_psuit
		jp	z, l_drop_psuitStorageSpaceCheck
		jp	l_drop_checkDecrement
; ---------------------------------------------------------------------------

l_drop_psuitStorageSpaceCheck:
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	nz, loc_3A97

		ld	a, (g_currentRoomNumber)
		cp	room_gcs_storageSpace
		jp	nz, loc_3A97

		ld	a, (g_gcsStorage_location)
		cp	gcsStorage_locker335
		jp	nz, loc_3A97

		ld	a, (g_gcs_locker335_open)
		cp	1
		jp	nz, loc_3A97

		ld	a, 1
		ld	(g_gcs_psuitInLocker), a
		ld	a, floorMsg_pSuit_inLocker

loc_3A91:
		ld	(item_pSuit.floorMessageIndex), a
		jp	l_drop_checkDecrement
; ---------------------------------------------------------------------------

loc_3A97:
		ld	a, floorMsg_pSuit
		jp	loc_3A91
; ---------------------------------------------------------------------------
