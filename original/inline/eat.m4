; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_eat:
		cp	p_eat
		jp	nz, l_inline_drink
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs			; Only works on GCS...
		jp	z, loc_105C

l_inline_dontKnowHow:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop

loc_105C:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_restaurant		; ...in the restaurant
		jp	nz, l_inline_dontKnowHow
		ld	a, (g_poisonedFlag)
		cp	1				; Can't eat if already been poisoned
		jp	nz, loc_1076
		printMessage(s_inNoCondition)
		jp	l_mainLoop

loc_1076:
		printMessage(s_steakAndMushrooms)
		printMessage(s_stomachPumped)
		printMessage(s_medicLine)
		ld	a, room_gcs_hospital
		ld	(g_currentRoomNumber), a
		ld	a, 1
		ld	(g_poisonedFlag), a
		jp	l_mainLoopEntry
