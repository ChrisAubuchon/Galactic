		; Skip if Lucinda is with the player
		ld	hl, item_lucindaObject.location
		ld	a, location_withPlayer
		cp	(hl)
		jp	z, l_inline_earthEarlyTimers

		ld	a, (g_currentPlanetNumber)
		cp	(hl)
		jp	nz, l_lucinda_onCurrentPlanet

		inc	hl
		ld	a, (g_currentRoomNumber)
		cp	(hl)
		jp	z, l_inline_earthEarlyTimers

l_lucinda_onCurrentPlanet:
		; If Troch and Lucinda are in the same room, Troch will kill Lucinda
		; and the game will be forcably ended.
		;
		ld	hl, item_lucindaObject.location
		ld	a, (item_trochObject.location)
		cp	(hl)
		jp	nz, l_lucinda_escapeCheck

		inc	hl
		ld	a, (item_trochObject.roomNumber)
		cp	(hl)
		jp	nz, l_lucinda_escapeCheck

		printMessage(s_trochKilledLucinda)

l_inline_forceGameEnd:
		printMessage(s_endingGame)
		jp	l_inline_playerDied
; ---------------------------------------------------------------------------

l_lucinda_escapeCheck:
		; Lucinda can escape in lockableDoors room or lakeEdge
		ld	a, (item_lucindaObject.roomNumber)
		cp	room_navier_lockableDoors
		jp	z, l_lucinda_checkDoorStatus

		cp	room_navier_lakeEdge
		jp	nz, l_lucinda_diskCheck

l_lucinda_checkDoorStatus:
		ld	a, (item_lockingDoors.floorMessageIndex)
		cp	floorMsg_ewDoors_locked
		jp	z, l_lucinda_diskCheck

		printMessage(s_lucindaEscaped)
		jp	l_inline_forceGameEnd
; ---------------------------------------------------------------------------

l_lucinda_diskCheck:
		; Lucinda will destroy cpmDiskA if she's in the same room
		;
		ld	hl, item_lucindaObject.location
		ld	a, (item_cpmDiskA.location)
		cp	(hl)
		jp	nz, l_inline_earthEarlyTimers

		ld	a, (item_cpmDiskA.roomNumber)
		inc	hl
		cp	(hl)
		jp	nz, l_inline_earthEarlyTimers

		printMessage(s_lucindaDestroyedDisk)
		jp	l_inline_forceGameEnd
; ---------------------------------------------------------------------------
