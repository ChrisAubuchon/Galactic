dnl This is a variation of the fox-chicken-grain puzzle.
dnl
dnl On Navier, you get cpmDiskA from the computer center. Lucinda the crook
dnl is also there. You have to take Troch with you to 'search' and find the
dnl the disk.
dnl
dnl In order to get the location of cpmDiskB, you have to get Lucinda back to
dnl your ship to use the neural analyzer on her.
dnl
dnl The problem occurs when you have to cross the lake in the small rowboat. You
dnl can only be carrying one item at a time across the lake. 
dnl
dnl Lucinda can't be in the same room and location as Troch. He kills her and it's game over.
dnl Lucinda can't be in the same room and location as the disk. She destroys it and gg.
dnl Lucinda can escape if she's left at the Lake Edge or in the lockable doors room with the
dnl doors unlocked.
dnl
		; Skip if Lucinda is with the player
		;
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
