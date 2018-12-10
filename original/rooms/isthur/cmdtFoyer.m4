; ---------------------------------------------------------------------------
; Actions:
;  - Change verbose_offset to s_terse_cmdtFoyer
; ---------------------------------------------------------------------------
l_room_isthurCmdtFoyer:
		; `setVerboseOffset(s_terse_cmdtFoyer)'
		ld	hl, (g_currentRoomData)
		inc	hl
		inc	hl					; room_t.verbose_offset
		ld	(hl), HI_BYTE(s_terse_cmdtFoyer)
		inc	hl
		ld	(hl), LO_BYTE(s_terse_cmdtFoyer)
		jp	l_advanceClock
