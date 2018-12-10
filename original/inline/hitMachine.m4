; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
g_inline_hitMachine:
		; RETURN - Eq->Ne and loc_3C30->l_hitMachine_noMachine
		ifCurrentPlanetEq(location_gcs, loc_3C30)

; RETURN - Move to return label section
l_hitMachine_noMachine:
		printMessage(s_noMachine)
		jp	l_mainLoop

loc_3C30:
		ifCurrentRoomNe(room_gcs_storageSpace, l_hitMachine_noMachine)
		ifVariableNe(g_lockerRentedFlag, 0, l_hitMachine_cantRent)
		printMessage(s_machineDropsKey)
		setItemLocation(item_lockerKey, location_gcs)
		setVariable(g_lockerRentedFlag, 1)
		jp	l_mainLoop

l_hitMachine_cantRent:
		printMessage(s_unableToRentLocker)
		jp	l_mainLoop
