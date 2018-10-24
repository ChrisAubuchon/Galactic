; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_launch:
		ld	a, (g_currentRoomNumber)
		cp	room_inShip
		jp	z, loc_3084
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop

loc_3084:
		ld	a, (g_hireList.hiredFlag)		; Welma
		cp	notHired
		jp	nz, loc_3096

l_doLaunch_unable:
		printMessage(s_unableToDoNow)
		jp	l_mainLoop

loc_3096:
		ld	a, (g_crew_severn.hiredFlag)
		cp	notHired
		jp	z, l_doLaunch_unable

		ld	a, (g_crew_alex.hiredFlag)
		cp	notHired
		jp	z, l_doLaunch_unable

		ld	hl, item_navComputer.location
		ld	a, (hl)
		cp	location_ship
		jp	nz, l_doLaunch_unable

		ld	hl, (g_launchCounter_xxx)
		ld	a, h
		cp	1
		jp	nc, l_doLaunch_success

		ld	a, l
		cp	5Fh ; '_'
		jp	nc, l_doLaunch_success
		printMessage(s_notDepartureTime)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_doLaunch_success:
		ld	a, room_inOrbit
		ld	(g_currentRoomNumber), a
		jp	l_mainLoopEntry
