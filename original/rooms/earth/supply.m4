l_room_supply:
		ld	a, (item_navComputer.location)
		cp	location_none
		jp	z, l_advanceClock

		ld	a, (g_shipSuppliedFlag)
		cp	1
		jp	z, l_advanceClock

		ld	a, (g_earth_supplyState)
		cp	earthSupply_init
		jp	z, l_earthSupply_init

		cp	earthSupply_enableNavier
		jp	z, l_earthRoom_enableNavier

		cp	earthSupply_enableGcs
		jp	z, l_earthSupply_enableGcs

		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_earthSupply_init:
		printMessage(s_supplyQuestion)
		printMessage(s_supplyAnswer)
		printMessage(s_suppliesOnBoard)

		IncreaseScore(9)

		ld	a, 1
		ld	(g_shipSuppliedFlag), a

		ld	a, earthSupply_invalid
		ld	(g_earth_supplyState), a
		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_earthRoom_enableNavier:
		ld	a, 1
		ld	(g_shipSuppliedFlag), a

		IncreaseScore(2)

		ld	a, earthSupply_invalid
		ld	(g_earth_supplyState), a

		; Mark Navier as the only planet that can be landed on
		ld	a, 1
		ld	(g_landing_navier.canLandFlag), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a

		ld	a, 11
		ld	(item_cpmDiskA.scoreBonus), a
		ld	a, room_navier_computerCenter
		ld	(item_cpmDiskA.roomNumber), a

		ld	a, 13
		ld	(item_cpmDiskB.scoreBonus), a
		ld	a, room_navier_tomorrowChamber
		ld	(item_cpmDiskB.roomNumber), a
		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_earthSupply_enableGcs:
		ld	a, 1
		ld	(g_shipSuppliedFlag), a

		IncreaseScore(1)

		ld	a, earthSupply_invalid
		ld	(g_earth_supplyState), a

		; Mark GCS as landable
		ld	a, 1
		ld	(g_landing_gcs.canLandFlag), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		jp	l_advanceClock
