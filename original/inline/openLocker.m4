; ---------------------------------------------------------------------------
; "open locker"
; ---------------------------------------------------------------------------
l_inline_openLocker:
		ld	b, p_open
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	z, l_inline_closeLocker

		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, (g_currentRoomNumber)
		cp	room_gcs_storageSpace
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, (item_lockerKey.location)
		cp	location_inventory
		jp	nz, l_inline_noKey

		ld	a, (g_gcsStorage_location)
		cp	gcsStorage_locker335
		jp	z, l_openLocker_locker335

		cp	gcsStorage_locker548
		jp	z, l_openLocker_locker548

		printMessage(s_lockerClosedLocked)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_openLocker_locker548:
		ld	a, (g_gcs_caseInLocker)
		cp	1
		jp	nz, l_dolat_dontKnowHowHere

		printMessage(s_locker548)
		printMessage(s_caseMessage1)

		ld	a, floorMsg_attacheCase
		ld	(item_attacheCase.floorMessageIndex), a

		ld	a, location_gcs
		ld	(item_attacheCase.location), a

		ld	a, room_gcs_storageSpace
		ld	(item_attacheCase.roomNumber), a

		ld	a, 0
		ld	(g_gcs_caseInLocker), a

		ld	a, 1
		ld	(g_caseTrigger), a

		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_openLocker_locker335:
		ld	a, (g_gcs_locker335_open)
		cp	TRUE
		jp	z, l_inline_ridiculous

		printMessage(s_lockerOpen)

		ld	a, (g_gcs_psuitInLocker)
		cp	TRUE
		jp	nz, loc_19F8

		ld	a, floorMsg_pSuit_inLocker
		ld	(item_pSuit.floorMessageIndex), a
		ld	a, location_gcs
		ld	(item_pSuit.location), a

loc_19F8:
		ld	a, TRUE
		ld	(g_gcs_locker335_open), a
		jp	l_mainLoop
