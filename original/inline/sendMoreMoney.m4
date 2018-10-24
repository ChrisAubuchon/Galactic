l_inline_sendMoreMoney:
		cp	p_puzzleMoney
		jp	nz, loc_11AC

		ld	a, (g_currentPlanetNumber)
		cp	location_navier
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, (g_currentRoomNumber)
		cp	room_navier_lockableDoors
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, (item_lockingDoors.floorMessageIndex)
		cp	floorMsg_ewDoors_open
		jp	nz, loc_1189

l_inline_noWayToDo:
		printMessage(s_noWayToDo)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1189:
		ld	a, (item_keyingCard.location)
		cp	location_inventory
		jp	nz, l_inline_noWayToDo
		printMessage(s_okay)
		ld	a, floorMsg_ewDoors_open
		ld	(item_lockingDoors.floorMessageIndex), a
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

		ld	a, (g_currentPlanetNumber)
		cp	location_navier
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, (g_currentRoomNumber)
		cp	room_navier_lockableDoors
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, (item_lockingDoors.floorMessageIndex)
		cp	floorMsg_ewDoors_locked
		jp	z, l_inline_noWayToDo

		ld	a, (item_keyingCard.location)
		cp	location_inventory
		jp	nz, l_inline_noWayToDo

		printMessage(s_okay)
		ld	a, floorMsg_ewDoors_locked
		ld	(item_lockingDoors.floorMessageIndex), a

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

		ld	a, (g_currentPlanetNumber)
		cp	location_navier
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, (g_currentRoomNumber)
		cp	room_navier_airlock
		jp	nz, l_dolat_dontKnowHowHere

		ld	a, floorMsg_nDoor_locked
		ld	(item_nDoor.floorMessageIndex), a
		ld	hl, (g_currentRoomData)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), room_navier_computerCenter		; room_t.north_room
		jp	l_mainLoopEntry
