; ---------------------------------------------------------------------------
; "close locker"
; ---------------------------------------------------------------------------
l_inline_closeLocker:
		ld	b, p_close
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	z, l_parse_depositKey

		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, (g_currentRoomNumber)
		cp	room_gcs_storageSpace
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, (g_gcs_locker335_open)
		cp	0
		jp	z, l_inline_ridiculous

		printMessage(s_lockerLocked)

		ld	a, (item_pSuit.location)
		cp	location_gcs
		jp	nz, loc_1A40

		ld	a, (item_pSuit.roomNumber)
		cp	room_gcs_storageSpace
		jp	nz, loc_1A40

		ld	a, location_none
		ld	(item_pSuit.location), a

loc_1A40:
		ld	a, 0
		ld	(g_gcs_locker335_open), a

		jp	l_mainLoop
