l_room_supply:
		ifItemInLocation(item_navComputer, location_none, l_advanceClock)
		ifVariableEq(g_shipSuppliedFlag, TRUE, l_advanceClock)
		loadVariable(g_earth_supplyState)
		jumpEq(earthSupply_init, l_earthSupply_init)
		jumpEq(earthSupply_enableNavier, l_earthSupply_enableNavier)
		jumpEq(earthSupply_enableGcs, l_earthSupply_enableGcs)
		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_earthSupply_init:
		printMessage(s_supplyQuestion)
		printMessage(s_supplyAnswer)
		printMessage(s_suppliesOnBoard)
		increaseScore(9)
		setVariable(g_shipSuppliedFlag, TRUE)
		setVariable(g_earth_supplyState, earthSupply_invalid)
		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_earthSupply_enableNavier:
		setVariable(g_shipSuppliedFlag, TRUE)
		increaseScore(2)
		setVariable(g_earth_supplyState, earthSupply_invalid)

		; Mark Navier as the only planet that can be landed on
		ld	a, 1
		ld	(g_landing_navier.canLandFlag), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a

		setItemScoreBonus(item_cpmDiskA, 11)
		setItemRoom(item_cpmDiskA, room_navier_computerCenter)
		setItemScoreBonus(item_cpmDiskB, 13)
		setItemRoom(item_cpmDiskB, room_navier_tomorrowChamber)
		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_earthSupply_enableGcs:
		setVariable(g_shipSuppliedFlag, TRUE)
		increaseScore(1)
		setVariable(g_earth_supplyState, earthSupply_invalid)

		; Mark GCS as landable
		ld	a, 1
		ld	(g_landing_gcs.canLandFlag), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		jp	l_advanceClock
