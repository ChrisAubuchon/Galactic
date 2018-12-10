; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_land:
		ifCurrentRoomEq(room_inOrbit, l_doLand_checkCanLand)
		printMessage(s_dontKnowHowToApply)
		jp	l_mainLoop

l_doLand_checkCanLand:
		ld	a, (g_currentPlanetNumber)
		sub	1
		ld	e, a
		ld	d, 0
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	hl, g_landing_earth
		add	hl, de
		ld	a, (hl)
		cp	canLand
		jp	nz, l_doLand_changeRoom
		inc	hl
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	l_mainLoop

l_doLand_changeRoom:
		setCurrentRoom(room_inShip)
		jp	l_mainLoopEntry
