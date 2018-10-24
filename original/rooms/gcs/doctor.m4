; ---------------------------------------------------------------------------
; Condition: (l_gcs_doctorTrigger == TRUE)
;   - Actions:
;     - Set l_gcs_doctorTrigger to FALSE
;     - Set scoreBonus of room_gcs_headquarters to 4
;     - Add roomFlag_first to room_gcs_headquarters roomFlag
;     - Set first_offset of room_gcs_headquarters to s_first_gcsHeadquarters
;     - Set enter_room and outward_room of room_gcs_innerCorridor_19 to
;       room_gcs_supply
;     - Print doctor messages
; ---------------------------------------------------------------------------
l_room_gcsDoctor:
		ld	a, (l_gcs_doctorTrigger)
		cp	1
		jp	nz, l_advanceClock

		ld	a, FALSE
		ld	(l_gcs_doctorTrigger), a

		ld	a, (g_currentRoomNumber)
		push	af

		ld	a, room_gcs_headquarters
		ld	(g_currentRoomNumber), a
		call	getRoomData

		ld	hl, (g_currentRoomData)			; room_t.scoreBonus
		ld	(hl), 4

		inc	hl					; room_t.roomFlag
		ld	a, (hl)
		or	roomFlag_first

		ld	(hl), a
		ld	de, 5
		add	hl, de					; room_t.first_offset (HI)
		ld	(hl), HI_BYTE(s_first_gcsHeadquarters)
		inc	hl
		ld	(hl), LO_BYTE(s_first_gcsHeadquarters)

		ld	a, room_gcs_innerCorridor_19
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 16h
		add	hl, de					; room_t.enter_room
		ld	(hl), room_gcs_supply
		inc	hl
		inc	hl
		inc	hl					; room_t.outward_room
		ld	(hl), room_gcs_supply
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData

		printMessage(s_doctorMessage2)
		printMessage(s_doctorMessage3)
		jp	l_advanceClock
