; ---------------------------------------------------------------------------
; Actions:
;  - Change verbose_offset to s_terse_intelHq
; ---------------------------------------------------------------------------
l_room_isthurIntelHq:
		; `setVerboseOffset(s_terse_intelHq)'
		ld	hl, (g_currentRoomData)
		ld	de, 3
		add	hl, de				; room_t.verbose_offset (LO)
		ld	(hl), LO_BYTE(s_terse_intelHq)
		jp	l_advanceClock
