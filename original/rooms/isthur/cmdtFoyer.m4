; ---------------------------------------------------------------------------
; Actions:
;  - Change verbose_offset to s_terse_cmdtFoyer
; ---------------------------------------------------------------------------
l_room_isthurCmdtFoyer:
		ld	hl, (g_currentRoomData)
		inc	hl
		inc	hl
		ld	(hl), HI_BYTE(s_terse_cmdtFoyer)
		inc	hl
		ld	(hl), LO_BYTE(s_terse_cmdtFoyer)
		jp	l_advanceClock
