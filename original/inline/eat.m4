; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_eat:
		cp	p_eat
		jp	nz, l_inline_drink

		; RETURN - Change to ifCurrentPlanetNe(location_gcs, l_inline_dontKnowHow)
		; after moving l_inline_dontKnowHow
		;
		ifCurrentPlanetEq(location_gcs, loc_105C)

; RETURN - Move to return label section
;
l_inline_dontKnowHow:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop

loc_105C:
		ifCurrentRoomNe(room_gcs_restaurant, l_inline_dontKnowHow)
		ifVariableNe(g_poisonedFlag, 1, loc_1076)
		printMessage(s_inNoCondition)
		jp	l_mainLoop

loc_1076:
		printMessage(s_steakAndMushrooms)
		printMessage(s_stomachPumped)
		printMessage(s_medicLine)
		setCurrentRoom(room_gcs_hospital)
		setVariable(g_poisonedFlag, 1)
		jp	l_mainLoopEntry
