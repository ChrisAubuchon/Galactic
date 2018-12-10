; ---------------------------------------------------------------------------
; The commandant office code performs different functions based on the high
; byte of the first_offset. The default value (HI_BYTE(s_first_cmdtOffice)
; does nothing.
;
; XXX - Revisit once the other strings are located
; ---------------------------------------------------------------------------

l_room_isthurCmdtOffice:
		; `ifFirstMessageNe(s_first_cmdtOffice_alt, loc_6F7)'
		ld	hl, (g_currentRoomData)
		ld	de, 6
		add	hl, de					; room_t.first_offset (HI)
		ld	a, (hl)
		cp	3Bh ; ';'
		jp	nz, loc_6F7

		ld	a, canLand
		ld	(g_landing_gcs.canLandFlag), a
		ld	a, cannotLand
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
		setVariable(g_shipSuppliedFlag, TRUE)
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_6F7:
		; `ifFirstMessageNe(s_isthur_cmdtMessage_disks, loc_73B)'
		cp	47h ; 'G'
		jp	nz, loc_73B

		ld	a, canLand
		ld	(g_landing_solomaw.canLandFlag), a
		ld	a, cannotLand
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		setVariable(g_shipSuppliedFlag, TRUE)

		ld	a, (g_currentRoomNumber)
		push	af

		setCurrentRoom(room_isthur_inShip)
		call	getRoomData

		; `addCurrentRoomFlag(roomFlag_first)'
		ld	hl, (g_currentRoomData)
		inc	hl					; room_t.roomFlags
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a

		; `setCurrentRoomFirstMessage(s_tookCareOfSupplies)'
		ld	de, 5					; room_t.firstFlags
		add	hl, de
		ld	(hl), HI_BYTE(s_tookCareOfSupplies)
		inc	hl
		ld	(hl), LO_BYTE(s_tookCareOfSupplies)

		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_73B:
		; `ifFirstMessageNe(s_isthur_cmdtMessage_goodJob, l_advanceClock)'
		cp	48h ; 'H'
		jp	nz, l_advanceClock

		ld	a, canLand
		ld	(g_landing_earth.canLandFlag), a
		ld	a, cannotLand
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a

		; `setVariable(g_shipSuppliedFlag, TRUE)'
		; `setVariable(gameWonFlagMaybe, TRUE)'
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	(gameWonFlagMaybe), a

		ld	a, (g_currentRoomNumber)
		push	af
		setCurrentRoom(room_isthur_inShip)
		call	getRoomData

		; `addCurrentRoomFlag(roomFlag_first)'
		ld	hl, (g_currentRoomData)
		inc	hl					; room_t.roomFlags
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a

		; `setCurrentRoomFirstMessage(s_tookCareOfSupplies)'
		ld	de, 5					; room_t.first_offset
		add	hl, de
		ld	(hl), HI_BYTE(s_tookCareOfSupplies)
		inc	hl
		ld	(hl), LO_BYTE(s_tookCareOfSupplies)

		ld	a, (g_currentPlanetNumber)
		push	af
		setCurrentPlanet(location_earth)
		setCurrentRoom(room_earth_commanderFoyer)
		call	getRoomData

		; `setAmbientMessage(s_earth_cmdrDoorUnlocked)'
		ld	hl, (g_currentRoomData)
		ld	de, 9
		add	hl, de					; room_t.ambient_offset (LO)
		ld	(hl), LO_BYTE(s_earth_cmdrDoorUnlocked)

		
		; `setRoomInDirection(east, room_earth_commanderOffice)'
		ld	de, 3
		add	hl, de					; room_t.east_room
		ld	(hl), room_earth_commanderOffice

		; `setRoomInDirection(enter, room_earth_commanderOffice)'
		ld	de, 0Ah
		add	hl, de
		ld	(hl), room_earth_commanderOffice

		pop	af
		ld	(g_currentPlanetNumber), a
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
