; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
loc_1B57:
		push	af
		ld	a, (g_currentRoomNumber)
		cp	5
		jp	nz, l_inline_dontKnowHowHere
		pop	af

		cp	p_crystal
		jp	nz, loc_1B68
		ld	a, p_statue

loc_1B68:
		cp	p_claw
		jp	c, l_inline_noWayToDo
		cp	p_radsuit
		jp	nc, l_inline_noWayToDo
		sub	65h ; 'e'
		ld	d, 0
		ld	e, a
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		add	hl, hl
		ex	de, hl
		ld	hl, g_itemList.location
		add	hl, de
		ld	a, (hl)
		cp	location_inventory
		jp	nz, l_drop_ambiguous_disk

		ld	(hl), location_none

		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a

		increaseScore(5)

		ld	a, (g_deliveredItemCount)
		add	a, 1
		ld	(g_deliveredItemCount), a
		cp	3
		jp	nz, l_printOkayAndLoop

		printMessage(s_recoveryDiskLocation)

		increaseScore(14)

		ld	a, location_solomaw
		ld	(item_skeletonKey.location), a

		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	(g_landing_earth.canLandFlag), a
		ld	a, 0
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a

		ld	a, earthSupply_enableGcs
		ld	(g_earth_supplyState), a
		jp	l_mainLoop
