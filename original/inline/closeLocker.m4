; ---------------------------------------------------------------------------
; "close locker"
; ---------------------------------------------------------------------------
l_inline_closeLocker:
		ld	b, p_close
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	z, l_parse_depositKey

		ifCurrentPlanetNe(location_gcs, l_dolat_dontKnowHowHere)
		ifCurrentRoomNe(room_gcs_storageSpace, l_dolat_dontKnowHowHere)
		ifVariableEq(g_gcs_locker335_open, 0, l_inline_ridiculous)
		printMessage(s_lockerLocked)
		ifItemNotInLocation(item_pSuit, location_gcs, loc_1A40)
		ifItemNotInRoom(item_pSuit, room_gcs_storageSpace, loc_1A40)

loc_1A40:
		setVariable(g_gcs_locker335_open, 0)
		jp	l_mainLoop
