; ---------------------------------------------------------------------------
; "open locker"
; ---------------------------------------------------------------------------
l_inline_openLocker:
		ld	b, p_open
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	z, l_inline_closeLocker

		ifCurrentPlanetNe(location_gcs, l_dolat_dontKnowHowHere)
		ifCurrentRoomNe(room_gcs_storageSpace, l_dolat_dontKnowHowHere)
		ifItemNotInInventory(item_lockerKey, l_inline_noKey)
		loadVariable(g_gcsStorage_location)
		jumpEq(gcsStorage_locker335, l_openLocker_locker335)
		jumpEq(gcsStorage_locker548, l_openLocker_locker548)
		printMessage(s_lockerClosedLocked)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_openLocker_locker548:
		ifVariableNe(g_gcs_caseInLocker, 1, l_dolat_dontKnowHowHere)
		printMessage(s_locker548)
		printMessage(s_caseMessage1)
		setItemFloorMessage(item_attacheCase, floorMsg_attacheCase)
		setItemLocation(item_attacheCase, location_gcs)
		setItemRoom(item_attacheCase, room_gcs_storageSpace)
		setVariable(g_gcs_caseInLocker, FALSE)
		setVariable(g_caseTrigger, TRUE)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_openLocker_locker335:
		ifVariableEq(g_gcs_locker335_open, TRUE, l_inline_ridiculous)
		printMessage(s_lockerOpen)
		ifVariableNe(g_gcs_psuitInLocker, TRUE, loc_19F8)
		setItemFloorMessage(item_pSuit, floorMsg_pSuit_inLocker)
		setItemLocation(item_pSuit, location_gcs)

loc_19F8:
		setVariable(g_gcs_locker335_open, TRUE)
		jp	l_mainLoop
