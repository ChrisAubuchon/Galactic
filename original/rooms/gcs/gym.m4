; ---------------------------------------------------------------------------
; Actions:
;   - Change enter_room and inward_room of room_gcs_outerCorridor_20 to
;     room_gymClosed
; ---------------------------------------------------------------------------
l_room_gcsGym:
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, room_gcs_outerCorridor_20
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 16h
		add	hl, de					; room_t.enter_room
		ld	(hl), room_gymClosed
		inc	hl
		inc	hl					; room_t.inward_room
		ld	(hl), room_gymClosed
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
