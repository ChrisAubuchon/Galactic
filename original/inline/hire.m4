; ---------------------------------------------------------------------------
; Code for hiring crew members
;
; a - Hiree token
; ---------------------------------------------------------------------------
l_inline_hire:
		ld	e, a
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	z, l_hire_earth
		cp	location_gcs			; Looks like a stray line. Does nothing

l_doHire_dontKnowHow:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop

l_hire_earth:
		ld	a, e
		sub	p_low_hiree
		ld	e, a				; e = g_hireList index
		ld	b, e				; b = g_hireList index
		ld	a, (g_currentRoomNumber)	; a = Current room number
		sub	room_earth_hiree_low		; a = roomNumber - hiree_low. This syncs
							; indices between roomNumber and g_hireList
		cp	10h				; Main entrance
		jp	z, l_doHire_dontKnowHow
		cp	0Fh				; Starlight Lounge
		jp	z, l_doHire_starlightLounge

loc_3501:
		cp	e				; Compare roomNumber and g_hireList indices
		jp	nz, l_doHire_dontKnowHow

loc_3505:
		ld	d, 0
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	hl, g_hireList
		add	hl, de				; hl = &g_hireList[index].hiredFlag
		ld	a, (hl)
		cp	notHired
		jp	z, loc_3522

		printMessage(s_alreadyHired)
		jp	l_mainLoop

loc_3522:
		; Print s_hired_* message
		inc	hl
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile

		; Handle unhireables
		ld	a, b
		cp	hire_parson
		jp	z, l_mainLoop
		cp	hire_alex
		jp	z, l_mainLoop
		cp	hire_pirate
		jp	z, l_mainLoop

		dec	hl
		dec	hl
		ld	(hl), isHired
		cp	hire_bartender
		jp	nz, l_doHire_updateLoungeVerbose
		inc	hl			; Mark Alex as hired when bartender is hired
		inc	hl
		inc	hl
		ld	(hl), isHired 

l_doHire_updateLoungeVerbose:
		ld	hl, (g_currentRoomData)
		inc	hl
		inc	hl					; hl = &g_currentRoomData.verbose
		cp	hire_bartender
		jp	nz, l_doHire_updateCustomsVerbose
		ld	(hl), HI_BYTE(s_verbose_alt_starLounge)
		inc	hl
		ld	(hl), LO_BYTE(s_verbose_alt_starLounge)
		jp	l_doHire_return

l_doHire_updateCustomsVerbose:
		cp	hire_brandon
		jp	nz, l_doHire_updateInfirmaryVerbose
		ld	(hl), HI_BYTE(s_terse_customs)
		inc	hl
		ld	(hl), LO_BYTE(s_terse_customs)
		jp	l_doHire_return

l_doHire_updateInfirmaryVerbose:
		cp	hire_reser
		jp	nz, l_doHire_updateTroch
		ld	(hl), HI_BYTE(s_terse_infirmary)
		inc	hl
		ld	(hl), LO_BYTE(s_terse_infirmary)
		jp	l_doHire_return

l_doHire_updateTroch:
		cp	hire_troch
		jp	nz, l_doHire_updateHallwayRoom

		; Move Troch to the ship
		push	hl
		ld	hl, item_trochObject.location
		ld	(hl), location_ship
		pop	hl

l_doHire_updateHallwayRoom:
		; Change the verbose and terse messages to emptyRoom
		ld	(hl), HI_BYTE(s_terse_emptyRoom)
		inc	hl
		ld	(hl), LO_BYTE(s_terse_emptyRoom)
		inc	hl
		ld	(hl), HI_BYTE(s_terse_emptyRoom)
		inc	hl
		ld	(hl), LO_BYTE(s_terse_emptyRoom)
		add	a, 3
		ld	b, a
		ld	a, (g_currentRoomNumber)
		ld	c, a
		ld	a, b
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 16h
		add	hl, de				; hl = &g_currentRoomData.enter_room
		ld	a, b
		add	a, 7
		ld	(hl), a
		ld	a, c
		ld	(g_currentRoomNumber), a
		call	getRoomData

l_doHire_return:
		jp	l_mainLoop

l_doHire_starlightLounge:
		push	af
		ld	a, e
		cp	hire_alex
		jp	z, loc_35B8
		pop	af
		jp	loc_3501

loc_35B8:
		pop	af
		jp	loc_3505
