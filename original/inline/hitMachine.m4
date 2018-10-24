; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
g_inline_hitMachine:
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	z, loc_3C30

l_hitMachine_noMachine:
		printMessage(s_noMachine)
		jp	l_mainLoop

loc_3C30:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_storageSpace
		jp	nz, l_hitMachine_noMachine

		ld	a, (g_lockerRentedFlag)
		cp	0
		jp	nz, l_hitMachine_cantRent

		printMessage(s_machineDropsKey)
		call	printFromMSGFile

		ld	hl, item_lockerKey.location		; Set lockerKey location to
		ld	(hl), location_gcs			; location_gcs

		ld	a, 1					; Mark locker as rented
		ld	(g_lockerRentedFlag), a
		jp	l_mainLoop

l_hitMachine_cantRent:
		printMessage(s_unableToRentLocker)
		jp	l_mainLoop
