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
		ld	a, location_none
		ld	(item_nDoor.location), a

		ld	a, TRUE
		ld	(g_navier_shelfTrigger), a

		ld	a, room_navier_airlock
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		inc	hl					; room_t.roomFlag
		ld	(hl), roomFlag_verbose | roomFlag_illusion
		inc	hl					; room_t.verbose_offset(HI)
		ld	(hl), HI_BYTE(s_verbose_navier_airlock_alt)
		inc	hl					; room_t.verbose_offset(LO)
		ld	(hl), LO_BYTE(s_verbose_navier_airlock_alt)
		ld	de, 7
		add	hl, de					; room_t.north_room
		ld	(hl), room_doorLocked
		inc	hl					; room_t.south_room
		ld	(hl), room_navier_shelf

		ld	a, (g_navier_computerCenterTrigger)
		cp	TRUE
		jp	z, loc_D38

		ld	a, TRUE
		ld	(g_navier_computerCenterTrigger), a

		ld	a, room_navier_shelf
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		inc	hl					; room_t.roomFlag
		ld	(hl), roomFlag_terse | roomFlag_illusion

loc_D38:
		ld	a, room_navier_computerCenter
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
