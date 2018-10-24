; ---------------------------------------------------------------------------
; This code increases the depth of the garbage in the garbage dump. It uses
; the ambient_offset of room_ishtur_garbageDump to determine the next level.
;
; Condition: (ambient_offset == s_ambient_garbageDump) 
;   Actions:
;     - Change ambient_offset to s_ambient_garbage_oneFourth
;     - Set scoreBonus of the garbage dump to 3
;
; Condition: (ambient_offset == s_ambient_oneFourth)
;   Actions:
;     - Change ambient_offset to s_ambient_garbage_oneHalf
;     - Set scoreBonus of the garbage dump to 2
;
; Condition: (ambient_offset == s_ambient_oneHalf)
;   Actions:
;     - Change ambient_offset to s_ambient_garbage_full
;     - Set scoreBonus of the garbage dump to 1
; ---------------------------------------------------------------------------
l_room_isthurCafeteria:
		ld	a, (g_currentRoomNumber)
		push	af

		ld	a, room_isthur_garbageDump
		ld	(g_currentRoomNumber), a
		call	getRoomData

		ld	hl, (g_currentRoomData)
		ld	de, 8
		add	hl, de				; room_t.ambient_offset (HI)
		ld	a, (hl)
		cp	HI_BYTE(s_ambient_garbageDump)
		jp	nz, loc_7DE

		ld	(hl), HI_BYTE(s_ambient_garbage_oneFourth)
		inc	hl
		ld	(hl), LO_BYTE(s_ambient_garbage_oneFourth)

		ld	hl, (g_currentRoomData)		; room_t.scoreBonus
		ld	(hl), 3
		jp	loc_7FB

loc_7DE:
		inc	hl				; room_t.ambient_offset (LO)
		ld	a, (hl)
		cp	LO_BYTE(s_ambient_garbage_oneFourth)
		jp	nz, loc_7EF

		ld	(hl), LO_BYTE(s_ambient_garbage_oneHalf)

		ld	hl, (g_currentRoomData)		; room_t.scoreBonus
		ld	(hl), 2
		jp	loc_7FB
; ---------------------------------------------------------------------------

loc_7EF:
		cp	LO_BYTE(s_ambient_garbage_oneHalf)
		jp	nz, loc_7FB

		ld	(hl), LO_BYTE(s_ambient_garbage_full)
		ld	hl, (g_currentRoomData)

		ld	(hl), 1

loc_7FB:
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
