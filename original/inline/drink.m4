l_inline_drink:
		cp	p_drink
		jp	nz, l_inline_annsAge

		loadCurrentPlanet()
		jumpEq(location_earth, l_drink_earth)
		jumpEq(location_gcs, l_drink_gcs)

		jp	l_inline_dontKnowHow
; ---------------------------------------------------------------------------

l_drink_earth:
		ifCurrentRoomNe(room_earth_starlightLounge, l_inline_dontKnowHow)
		printMessage(s_dontDrink)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_drink_gcs:
		loadCurrentRoom()
		jumpLt(room_gcs_landingBay, l_drink_drinkShipsBeverages)
		jumpLt(room_gcs_drinkable_low, loc_10D4)
		jumpGe(room_gcs_drinkable_high, loc_10D4)
		jp	loc_10F3
; ---------------------------------------------------------------------------

loc_10D4:
		jumpEq(room_gcs_restaurant, loc_10F3)
		jp	l_inline_dontKnowHow
; ---------------------------------------------------------------------------

l_drink_drinkShipsBeverages:
		ifVariableEq(g_drankShipsBeveragesFlag, 1, l_inline_dontKnowHow)
		printMessage(s_consumeAll)
		setVariable(g_drankShipsBeveragesFlag, 1)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_10F3:
		ifVariableNe(g_gcsDrankInRestaurantFlag, 1, loc_1105)
		printMessage(s_waiterNotArrived)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1105:
		setVariable(g_gcsDrankInRestaurantFlag, 1)
		printMessage(s_strongDrink)
		printMessage(s_sleep)
		call	advanceClock
		call	advanceClock
		call	advanceClock
		call	advanceClock
		call	advanceClock
		ld	a, room_gcs_barracks
		ld	(g_currentRoomNumber), a
		jp	l_mainLoopEntry
