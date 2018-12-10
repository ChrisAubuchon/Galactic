; ---------------------------------------------------------------------------
; Condition: (g_navier_shelfTrigger == TRUE)
;   - Actions:
;     - Set room_navier_airlock roomFlag to (roomFlag_verbose | roomFlag_illusion)
;     - Set room_navier_airlock verbose_offset to s_verbose_navier_airlock
;     - Set room_navier_airlock north_room to room_navier_computerCenter
;     - Set room_navier_airlock south_room to room_doorLocked
; Condition: (g_navier_shelfTrigger == FALSE)
;   Condition: (g_navier_boatTiedFlag == FALSE)
;     Action: Goto boat drifted away code
; ---------------------------------------------------------------------------
l_room_navierShelf:
		ifVariableNe(g_navier_shelfTrigger, TRUE, loc_CD8)
		setCurrentRoom(room_navier_airlock)
		call	getRoomData

		; `addCurrentRoomFlag(roomFlag_verbose | roomFlag_illusion)'
		ld	hl, (g_currentRoomData)
		inc	hl					; room_t.roomFlag
		ld	(hl), roomFlag_verbose | roomFlag_illusion

		; `setVerboseOffset(s_verbose_navier_airlock)'
		inc	hl					; room_t.verbose_offset (HI)
		ld	(hl), HI_BYTE(s_verbose_navier_airlock)
		inc	hl					; room_t.verbose_offset (LO)
		ld	(hl), LO_BYTE(s_verbose_navier_airlock)

		; `setRoomInDirection(north, room_navier_computerCenter)'
		ld	de, 7
		add	hl, de					; room_t.north_room
		ld	(hl), room_navier_computerCenter

		; `setRoomInDirection(south, room_doorLocked)'
		inc	hl					; room_t.south_room
		ld	(hl), room_doorLocked

loc_CD8:
		ifVariableEq(g_navier_boatTiedFlag, FALSE, l_launchBoat_boatDrifted)

		setCurrentRoom(room_navier_shelf)
		call	getRoomData
		jp	l_advanceClock
