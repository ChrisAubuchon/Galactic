; ---------------------------------------------------------------------------
; Action: Change verbose_offset of room_navier_overlordChamber to
;         s_verbose_navier_overlordIgnored
; ---------------------------------------------------------------------------
l_room_navierOverlordChamber:
		ld	hl, (g_currentRoomData)
		inc	hl
		inc	hl					; room_t.verbose_offset
		ld	(hl), HI_BYTE(s_verbose_navier_overlordIgnored)
		inc	hl
		ld	(hl), LO_BYTE(s_verbose_navier_overlordIgnored)
		jp	l_advanceClock
