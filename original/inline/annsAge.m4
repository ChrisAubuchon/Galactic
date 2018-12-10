l_inline_annsAge:
		cp	p_annsAge
		jp	nz, l_inline_sendMoreMoney

		ifCurrentPlanetNe(location_navier, l_inline_nothingHappens)

		ifCurrentRoomNe(room_navier_levelTwoEntrance, l_inline_nothingHappens)

		ld	hl, (g_currentRoomData)			; room_t.scoreBonus
		inc	hl					; room_t.roomFlags
		inc	hl					; room_t.verbose_offset (HI)
		inc	hl					; room_t.verbose_offset (lo)
		ld	a, (hl)
		cp	LO_BYTE(s_verbose_navier_levelTwoEntrance)
		jp	nz, l_inline_nothingHappens

		ld	(hl), LO_BYTE(s_terse_navier_levelTwoEntrance)
		ld	de, 7
		add	hl, de					; room_t.north_room
		ld	(hl), room_navier_lockableDoors
		printMessage(s_done)
		jp	l_advanceClock
