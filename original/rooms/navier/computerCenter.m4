; ---------------------------------------------------------------------------
; Actions:
;   - Set item_nDoor location to location_none
;   - Set g_navier_shelfTrigger to TRUE
;   - Set room_navier_airlock roomFlag to (roomFlag_verbose | roomFlag_illusion)
;   - Set room_navier_airlock verbose_offset to s_verbose_navier_airlock_alt
;   - Set room_navier_airlock north_room to room_doorLocked
;   - Set room_navier_airlock south_room to room_navier_shelf
;   - Condition (g_navier_computerCenterTrigger != TRUE)
;     - Actions:
;       - Set g_navier_computerCenterTrigger to TRUE
;       - Set room_navier_shelf roomFlag to (roomFlag_terse | roomFlag_illusion)
; ---------------------------------------------------------------------------
l_room_navierComputerCenter:
		setItemLocation(item_nDoor, location_none)
		setVariable(g_navier_shelfTrigger, TRUE)

		setCurrentRoom(room_navier_airlock)
		call	getRoomData

		; `addCurrentRoomFlag(roomFlag_verbose | roomFlag_illusion)'
		ld	hl, (g_currentRoomData)
		inc	hl					; room_t.roomFlag
		ld	(hl), roomFlag_verbose | roomFlag_illusion

		; `setVerboseOffset(s_verbose_navier_airlock_alt)')
		inc	hl					; room_t.verbose_offset(HI)
		ld	(hl), HI_BYTE(s_verbose_navier_airlock_alt)
		inc	hl					; room_t.verbose_offset(LO)
		ld	(hl), LO_BYTE(s_verbose_navier_airlock_alt)

		; `setRoomInDirection(north, room_doorLocked)'
		ld	de, 7
		add	hl, de					; room_t.north_room
		ld	(hl), room_doorLocked

		; `setRoomInDirection(south, room_navier_shelf)'
		inc	hl					; room_t.south_room
		ld	(hl), room_navier_shelf

		ifVariableEq(g_navier_computerCenterTrigger, TRUE, loc_D38)
		setVariable(g_navier_computerCenterTrigger, TRUE)

		setCurrentRoom(room_navier_shelf)
		call	getRoomData

		; `addCurrentRoomFlag(roomFlag_terse | roomFlag_illusion)'
		ld	hl, (g_currentRoomData)
		inc	hl					; room_t.roomFlag
		ld	(hl), roomFlag_terse | roomFlag_illusion

loc_D38:
		setCurrentRoom(room_navier_computerCenter)
		call	getRoomData
		jp	l_advanceClock
