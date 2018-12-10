; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_ignite:
		ifCurrentRoomEq(room_inOrbit, l_ignite_checkSupplies)
		printMessage(s_ridiculous)
		jp	l_mainLoop

l_ignite_checkSupplies:
		ifVariableNe(g_shipSuppliedFlag, FALSE, l_ignite_checkBadDestination)
		printMessage(s_outOfSupplies)
		jp	l_inline_playerDied

l_ignite_checkBadDestination:
		setVariable(g_shipSuppliedFlag, FALSE)
		ifVariableNe(g_shipDestination, 0, l_ignite_checkSamePlanet)
		printMessage(s_travelMessage1)
		printMessage(s_deepSpace)
		jp	l_inline_playerDied

l_ignite_checkSamePlanet:
		ld	b, a
		ld	a, (g_currentPlanetNumber)
		cp	b
		jp	nz, l_ignite_changePlanet
		printMessage(s_courseImpossible)
		jp	l_mainLoop

l_ignite_changePlanet:
		ld	a, (g_shipDestination)
		ld	(g_currentPlanetNumber), a
		jp	l_mainLoopEntry
