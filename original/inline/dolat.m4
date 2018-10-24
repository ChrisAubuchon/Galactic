l_inline_dolat:
		cp	p_dolat
		jp	nz, l_inline_sleep
		ld	a, (g_currentPlanetNumber)
		cp	location_navier
		jp	z, loc_FFB

l_inline_nothingHappens:
		printMessage(s_nothingHappens)
		jp	l_mainLoop

loc_FFB:
		ld	a, (g_currentRoomNumber)
		cp	room_navier_undergroundMain
		jp	nz, l_inline_nothingHappens

		ld	hl, (g_currentRoomData)
		inc	hl
		inc	hl					; room_t.verbose_offset (HI)
		ld	a, (hl)
		cp	HI_BYTE(s_verbose_navier_underMain)
		jp	nz, l_inline_nothingHappens
		dec	hl					; room_t.roomFlag
		ld	(hl), roomFlag_verbose
		inc	hl					; room_t.verbose_offset (HI)
		ld	(hl), HI_BYTE(s_verbose_navier_underMain_alt)
		inc	hl					; room_t.verbose_offset (LO)
		ld	(hl), LO_BYTE(s_verbose_navier_underMain_alt)
		ld	de, 7
		add	hl, de					; room_t.north_room
		ld	(hl), room_navier_slopingTunnel
		printMessage(s_done)
		jp	l_mainLoopEntry
