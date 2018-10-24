l_inline_drink:
		cp	p_drink
		jp	nz, l_inline_annsAge
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	z, l_doDrink_earth
		cp	location_gcs
		jp	z, l_doDrink_gcs
		jp	l_inline_dontKnowHow
; ---------------------------------------------------------------------------

l_doDrink_earth:
		ld	a, (g_currentRoomNumber)
		cp	room_earth_starlightLounge
		jp	nz, l_inline_dontKnowHow
		printMessage(s_dontDrink)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_doDrink_gcs:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_landingBay
		jp	c, l_doDrink_drinkShipsBeverages
		cp	room_gcs_drinkable_low
		jp	c, loc_10D4
		cp	room_gcs_drinkable_high
		jp	nc, loc_10D4
		jp	loc_10F3
; ---------------------------------------------------------------------------

loc_10D4:
		cp	room_gcs_restaurant
		jp	z, loc_10F3
		jp	l_inline_dontKnowHow
; ---------------------------------------------------------------------------

l_doDrink_drinkShipsBeverages:
		ld	a, (g_drankShipsBeveragesFlag)
		cp	1
		jp	z, l_inline_dontKnowHow
		printMessage(s_consumeAll)
		ld	a, 1
		ld	(g_drankShipsBeveragesFlag), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_10F3:
		ld	a, (g_gcsDrankInRestaurantFlag)
		cp	1
		jp	nz, loc_1105
		printMessage(s_waiterNotArrived)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1105:
		ld	a, 1
		ld	(g_gcsDrankInRestaurantFlag), a
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
