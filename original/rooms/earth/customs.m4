; ---------------------------------------------------------------------------
; Earth customs checks
; ---------------------------------------------------------------------------
l_room_earthCustoms:
		ld	a, (g_crew_brandon.hiredFlag)
		cp	isHired
		jp	z, l_advanceClock

		ld	a, (item_analyzer.location)
		cp	location_ship
		jp	nz, loc_502

		printMessage(s_caughtWithAnalyzer)
		jp	l_inline_playerDied

loc_502:
		ld	a, (item_neutralizer.location)
		cp	location_inventory
		jp	nz, l_advanceClock

		printMessage(s_caughtWithIllusion)
		jp	l_inline_playerDied
