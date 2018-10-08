l_inline_doExamine:
		ld	a, (g_currentPlanetNumber)
		cp	location_isthur
		jp	z, l_doExamine_isthur
		cp	location_navier
		jp	z, l_doExamine_navier
		cp	location_gcs
		jp	z, l_doExamine_gcs

l_inline_didntFindAnything:
		printMessage(s_didntFindAnything)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_doExamine_isthur:
		ld	hl, item_purse.location
		ld	a, (hl)
		cp	location_none
		jp	nz, l_inline_didntFindAnything
		ld	a, (g_currentRoomNumber)
		cp	room_isthur_bubble39
		jp	nz, l_inline_didntFindAnything
		ld	(hl), location_isthur		; Mark purse as being on Isthur
		printMessage(s_floor_purseHidden)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_doExamine_navier:
		ld	a, (g_currentRoomNumber)
		cp	room_navier_tomorrowChamber
		jp	nz, l_doExamine_navier_diskA

		ld	hl, item_cpmDiskB.location
		ld	a, (hl)
		cp	location_none
		jp	nz, l_inline_didntFindAnything

		ld	a, (g_analyzerUsedOnLucinda)
		cp	0
		jp	z, l_inline_didntFindAnything

		ld	(hl), location_navier			; hl = &item_cpmDiskB.location
		printMessage(s_foundSecondCpmDisk)

		ld	a, 1
		ld	(g_shipSuppliedFlag), a

		; Mark Isthur as landable
		ld	a, canLand
		ld	(g_landing_isthur.canLandFlag), a

		ld	a, 1
		ld	(byte_49C4), a

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
		ld	a, location_isthur
		ld	(g_currentPlanetNumber), a
		ld	a, room_isthur_gammaEntrance
		ld	(g_currentRoomNumber), a
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

l_doExamine_gcs:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_examinable_low
		jp	nc, loc_3B71

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

l_doExamine_navier_diskA:
		cp	room_navier_copmuterCenter
		jp	nz, l_inline_didntFindAnything

		ld	hl, item_cpmDiskA.location
		ld	a, (hl)
		cp	location_none
		jp	nz, l_inline_didntFindAnything

		ld	a, (item_trochObject.location)		; Need Troch
		cp	location_withPlayer
		jp	nz, l_inline_didntFindAnything

		ld	(hl), location_navier
		printMessage(s_floor_cpmDiskFolder)
		jp	l_mainLoop
