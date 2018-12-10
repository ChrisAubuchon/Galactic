l_inline_examine:
		loadCurrentPlanet()
		jumpEq(location_isthur, l_examine_isthur)
		jumpEq(location_navier, l_examine_navier)
		jumpEq(location_gcs, l_examine_gcs)
		; RETURN - 'jp	l_inline_didntFindAnything'

; RETURN - Move to return label section
;
l_inline_didntFindAnything:
		printMessage(s_didntFindAnything)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_examine_isthur:
		; Load item_purse.location to HL instead of A. The location can
		; be updated under proper conditions so save a load by loading to HL
		ld	hl, item_purse.location
		ld	a, (hl)

		jumpNe(location_none, l_inline_didntFindAnything)
		ifCurrentRoomNe(room_isthur_bubble39, l_inline_didntFindAnything)

		ld	(hl), location_isthur		; Mark purse as being on Isthur
		printMessage(s_floor_purseHidden)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_examine_navier:
		ifCurrentRoomNe(room_navier_tomorrowChamber, l_examine_navier_diskA)

		ld	hl, item_cpmDiskB.location
		ld	a, (hl)

		jumpNe(location_none, l_inline_didntFindAnything)
		ifVariableEq(g_analyzerUsedOnLucinda, 0, l_inline_didntFindAnything)

		ld	(hl), location_navier			; hl = &item_cpmDiskB.location
		printMessage(s_foundSecondCpmDisk)

		setVariable(g_shipSuppliedFlag, 1)
		setVariable(g_landing_isthur.canLandFlag, canLand)
		setVariable(g_isthurGammaControlTrigger, 1)

		; Mark the other planets as unlandable
		ld	a, cannotLand
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a

		; Print message that supplies have been taken care of when re-entering
		; the ship
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, room_inShip
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		inc	hl
		ld	a, (hl)				; hl = &g_currentRoomData.roomFlags
		or	roomFlag_first
		ld	(hl), a
		ld	de, 5
		add	hl, de				; hl = &g_currentRoomData.first_offset
		ld	(hl), HI_BYTE(s_tookCareOfSupplies)
		inc	hl
		ld	(hl), LO_BYTE(s_tookCareOfSupplies)

		ld	a, (g_currentPlanetNumber)	; Save current planet number
		push	af

		; Open up the entrance to Gamma Control
		setCurrentPlanet(location_isthur)
		setCurrentRoom(room_isthur_gammaEntrance)
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 3
		add	hl, de				; hl = &g_currentRoomData.verbose (low)
		ld	(hl), LO_BYTE(s_verbose_gammaEntr_alt)
		ld	de, 9				; hl = &g_currentRoomData.east_room
		add	hl, de
		ld	(hl), room_isthur_gammaControl
		pop	af
		ld	(g_currentPlanetNumber), a
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_examine_gcs:
		loadCurrentRoom()
		jumpGe(room_gcs_examinable_low, loc_3B71)

		printMessage(s_dontSeeUnusual)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3B71:
		sub	room_gcs_examinable_low
		rlca
		ld	e, a
		ld	d, 0
		ld	hl, g_gcsExamineMsgList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_examine_navier_diskA:
		jumpNe(room_navier_computerCenter, l_inline_didntFindAnything)

		ld	hl, item_cpmDiskA.location
		ld	a, (hl)
		jumpNe(location_none, l_inline_didntFindAnything)
		ifItemNotWithPlayer(item_trochObject, l_inline_didntFindAnything)

		ld	(hl), location_navier
		printMessage(s_floor_cpmDiskFolder)
		jp	l_mainLoop
