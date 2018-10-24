; ---------------------------------------------------------------------------
; "analyze lucinda"
; ---------------------------------------------------------------------------
l_inline_analyzeLucinda:
		ld	a, (g_currentRoomNumber)
		cp	room_inOrbit
		jp	z, loc_40B3

		cp	room_inShip
		jp	z, loc_40B3

l_analyzeLucinda_dontKnowHow:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop

loc_40B3:
		ld	a, (item_lucindaObject.location)
		cp	location_withPlayer
		jp	z, l_analyzeLucinda_fail

		ld	a, (item_lucindaObject.roomNumber)
		cp	room_inOrbit
		jp	z, l_analyzeLucinda_fail

		cp	room_inShip
		jp	z, l_analyzeLucinda_fail

		jp	l_analyzeLucinda_dontKnowHow
; ---------------------------------------------------------------------------

l_analyzeLucinda_fail:
		ld	a, (analyzerInstalledFlag)
		cp	1
		jp	z, l_analyzeLucinda_success
		printMessage(s_cantAnalyzeLucinda)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_analyzeLucinda_success:
		printMessage(s_analyzeLucinda)
		ld	a, 1
		ld	(g_analyzerUsedOnLucinda), a
		jp	l_mainLoop
