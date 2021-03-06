; ---------------------------------------------------------------------------
; Condition: (verbose_offset == s_verbose_controlTower)
;   Actions:
;     - Change verbose_offset to s_terse_controlTower
;     - Set scoreBonus of room_isthur_cmdtOffice to 15
;     - Add roomFlag_first to roomFlag of room_isthur_cmdtOffice
;     - Set first_offset to s_first_cmdtOffice_alt
; ---------------------------------------------------------------------------
l_room_isthurControlTower:
		; `ifVerboseMessageNe(s_verbose_controlTower, l_advanceClock)'
		ld	hl, (g_currentRoomData)
		ld	de, 3
		add	hl, de				; room_t.verbose_offset (LO)
		ld	a, (hl)
		cp	LO_BYTE(s_verbose_controlTower)
		jp	nz, l_advanceClock

		; `setVerboseOffset(s_terse_controlTower)'
		ld	(hl), LO_BYTE(s_terse_controlTower)
		ld	a, (g_currentRoomNumber)
		push	af

		setCurrentRoom(room_isthur_cmdtOffice)
		call	getRoomData
		; `setCurrentRoomScore(15)'
		ld	hl, (g_currentRoomData)		; room_t.scoreBonus
		ld	(hl), 15

		; `addCurrentRoomFlag(roomFlag_first)'
		inc	hl				; room_t.roomFlag
		ld	a, (hl)
		or	roomFlag_first
		ld	(hl), a

		; `setCurrentRoomFirstMessage(s_first_cmdtOffice_alt)'
		ld	de, 5
		add	hl, de				; room_t.first_offset (HI)
		ld	(hl), HI_BYTE(s_first_cmdtOffice_alt)
		inc	hl
		ld	(hl), LO_BYTE(s_first_cmdtOffice_alt)
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
