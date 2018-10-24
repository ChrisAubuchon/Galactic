; ---------------------------------------------------------------------------
; Actions:
;   - Set first offset of Gamma Entrance to cycle south airlock
;   - Mark north_room of Gamma Entrance as "Can't Go"
;   - Mark south_room of Gamma Entrance to landing pad
; ---------------------------------------------------------------------------
l_room_isthurNsTunnel4:
		ld	a, (g_currentRoomNumber)
		push	af

		ld	a, room_isthur_gammaEntrance
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)

		inc	hl					; room_t.roomFlags
		ld	a, (hl)	
		or	roomFlag_first

		ld	(hl), a
		ld	de, 5
		add	hl, de					; room_t.first_offset

		ld	(hl), HI_BYTE(s_isthur_airlockSouthOpen) 
		inc	hl
		ld	(hl), LO_BYTE(s_isthur_airlockSouthOpen)

		ld	de, 3
		add	hl, de					; room_t.north_room
		ld	(hl), room_cantGo

		inc	hl					; room_t.south_room
		ld	(hl), room_isthur_landingPad

		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
