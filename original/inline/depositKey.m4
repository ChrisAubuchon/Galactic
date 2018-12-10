; ---------------------------------------------------------------------------
; "deposit locker"
; "deposit key"
; ---------------------------------------------------------------------------
l_parse_depositKey:
		ld	b, p_deposit
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_depositKey

		ld	b, p_deposit
		ld	c, p_key
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1A8F

l_inline_depositKey:
		ifCurrentPlanetNe(location_gcs, l_dolat_dontKnowHowHere)
		ifCurrentRoomNe(room_gcs_storageSpace, l_dolat_dontKnowHowHere)
		ifItemNotInInventory(item_lockerKey, l_dolat_dontKnowHowHere)
		setItemLocation(item_lockerKey, location_none)
		printMessage(s_machineSwallowKey)
		decreaseItemCount(1)

		jp	l_mainLoop
