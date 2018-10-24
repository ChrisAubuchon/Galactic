l_pickup_parsonItem:
		push	af				; item_navComputer.location is none
		ld	a, (item_navComputer.location)	; until the player sees the commander
		cp	location_none
		jp	z, loc_36C1

		; The navigation computer and neural analyzer can
		; only be "taken" from Parson's room.
		ld	a, (tmpObject)
		cp	p_computer
		jp	z, loc_36AD
		cp	p_analyze
		jp	z, loc_36AD

		jp	l_pickup_parson_itemBoughtCheck

loc_36AD:
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	nz, loc_36C1
		ld	a, (g_currentRoomNumber)
		cp	room_earth_parson
		jp	nz, loc_36C1
		pop	af
		jp	l_pickup_parson_itemBoughtCheck

loc_36C1:
		pop	af
		jp	l_pickup_beyondYourPower

l_pickup_parson_itemBoughtCheck:
		sub	p_computer
		ld	e, a
		ld	d, 0
		ld	hl, g_boughtItemList
		add	hl, de
		ld	a, (hl)
		cp	0
		jp	nz, loc_36DE
		printMessage(s_parsonArrested)
		jp	l_inline_playerDied


loc_36DE:
		ld	a, e
		cp	0
		jp	nz, loc_3704
		ld	a, (g_computerInstalledFlag)
		cp	1
		jp	z, l_pickup_beyondYourPower
		printMessage(s_purchased_computer)
		ld	a, 1
		ld	(g_computerInstalledFlag), a
		ld	hl, item_navComputer.location
		ld	(hl), location_ship
		dec	hl
		dec	hl				; hl = &navComputer.floorMessageIndex
		ld	(hl), floorMsg_navigationComputer_installed
		jp	l_mainLoop

loc_3704:
		cp	1
		jp	nz, loc_3729

		ld	a, (analyzerInstalledFlag)
		cp	1
		jp	z, l_pickup_beyondYourPower

		printMessage(s_purchased_analyzer)
		ld	a, 1
		ld	(analyzerInstalledFlag), a
		ld	hl, item_analyzer.location
		ld	(hl), 0
		dec	hl
		dec	hl				; hl = &analyzer.floorMessageIndex
		ld	(hl), floorMsg_analyzer_installed
		jp	l_mainLoop

loc_3729:
		cp	2
		jp	nz, loc_3731
		jp	l_pickup_genericItem

loc_3731:
		ld	hl, item_pSuit.floorMessageIndex	; Change pSuit floor message from
		ld	(hl), floorMsg_pSuit
		jp	l_pickup_genericItem
