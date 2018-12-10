; ---------------------------------------------------------------------------
; Earth customs checks
; ---------------------------------------------------------------------------
l_room_earthCustoms:
		ifCrewIsHired(g_crew_brandon, l_advanceClock)
		ifItemNotInLocation(item_analyzer, location_ship, loc_502)
		printMessage(s_caughtWithAnalyzer)
		jp	l_inline_playerDied

loc_502:
		ifItemNotInInventory(item_neutralizer, l_advanceClock)
		printMessage(s_caughtWithIllusion)
		jp	l_inline_playerDied
