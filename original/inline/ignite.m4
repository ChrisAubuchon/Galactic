; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_ignite:
		ld	a, (g_currentRoomNumber)
		cp	room_inOrbit
		jp	z, l_doIgnite_checkSupplies
		printMessage(s_ridiculous)
		jp	l_mainLoop

l_doIgnite_checkSupplies:
		ld	a, (g_shipSuppliedFlag)
		cp	FALSE
		jp	nz, l_doIgnite_checkBadDestination
		printMessage(s_outOfSupplies)
		jp	l_inline_playerDied

l_doIgnite_checkBadDestination:
		ld	a, FALSE
		ld	(g_shipSuppliedFlag), a
		ld	a, (g_shipDestination)
		cp	0
		jp	nz, l_doIgnite_checkSamePlanet
		printMessage(s_travelMessage1)
		printMessage(s_deepSpace)
		jp	l_inline_playerDied

l_doIgnite_checkSamePlanet:
		ld	b, a
		ld	a, (g_currentPlanetNumber)
		cp	b
		jp	nz, l_doIgnite_changePlanet
		printMessage(s_courseImpossible)
		jp	l_mainLoop

l_doIgnite_changePlanet:
		ld	a, (g_shipDestination)
		ld	(g_currentPlanetNumber), a
		jp	l_mainLoopEntry
