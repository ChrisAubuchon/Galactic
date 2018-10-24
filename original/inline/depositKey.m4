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
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, (g_currentRoomNumber)
		cp	room_gcs_storageSpace
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, (item_lockerKey.location)
		cp	location_inventory
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, location_none
		ld	(item_lockerKey.location), a

		printMessage(s_machineSwallowKey)

		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	l_mainLoop
