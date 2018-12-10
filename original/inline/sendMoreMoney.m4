l_inline_sendMoreMoney:
		cp	p_puzzleMoney
		jp	nz, loc_11AC

		ifCurrentPlanetNe(location_navier, l_dolat_dontKnowHowHere)
		ifCurrentRoomNe(room_navier_lockableDoors, l_dolat_dontKnowHowHere)
		ifItemFloorMessageNe(item_lockingDoors, floorMsg_ewDoors_open, loc_1189)

l_inline_noWayToDo:
		printMessage(s_noWayToDo)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1189:
		ifItemNotInInventory(item_keyingCard, l_inline_noWayToDo)
		printMessage(s_okay)
		setItemFloorMessage(item_lockingDoors, floorMsg_ewDoors_open)

		ld	hl, (g_currentRoomData)
		ld	de, 0Ch
		add	hl, de
		ld	(hl), room_navier_longCorridor_33		; room_t.east_room
		inc	hl
		ld	(hl), room_navier_levelTwoEntrance		; room_t.west_room
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_11AC:
		cp	p_puzzleSend
		jp	nz, loc_11EC

		ifCurrentPlanetNe(location_navier, l_dolat_dontKnowHowHere)
		ifCurrentRoomNe(room_navier_lockableDoors, l_dolat_dontKnowHowHere)
		ifItemFloorMessageEq(item_lockingDoors, floorMsg_ewDoors_locked, l_inline_noWayToDo)
		ifItemNotInInventory(item_keyingCard, l_inline_noWayToDo)
		printMessage(s_okay)
		setItemFloorMessage(item_lockingDoors, floorMsg_ewDoors_locked)

		ld	hl, (g_currentRoomData)
		ld	de, 0Ch
		add	hl, de
		ld	(hl), room_doorLocked				; room_t.east_room
		inc	hl
		ld	(hl), room_doorLocked				; room_t.west_room
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_11EC:
		cp	p_puzzleMore
		jp	nz, l_inline_museumAnswer

		ifCurrentPlanetNe(location_navier, l_dolat_dontKnowHowHere)
		ifCurrentRoomNe(room_navier_airlock, l_dolat_dontKnowHowHere)
		setItemFloorMessage(item_nDoor, floorMsg_nDoor_open)

		ld	hl, (g_currentRoomData)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), room_navier_computerCenter		; room_t.north_room
		jp	l_mainLoopEntry
