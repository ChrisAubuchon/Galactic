; ---------------------------------------------------------------------------
; Handle single command "knock"
; ---------------------------------------------------------------------------
l_inline_doKnock:
		cp	p_knock
		jp	nz, l_inline_doScore
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	z, loc_E96

l_doKnock_cantKnock:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop


loc_E96:
		ld	a, (g_currentRoomNumber)
		cp	room_earth_hallway_low
		jp	c, l_doKnock_cantKnock
		cp	room_earth_hallway_high
		jp	nc, l_doKnock_cantKnock
		sub	room_earth_hallway_low
		ld	d, 0
		ld	e, a
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	hl, g_hireList
		add	hl, de
		ld	a, (hl)
		cp	isHired				; No answer if already hired
		jp	nz, loc_EC3

l_doKnock_noAnswer:
		printMessage(s_noAnswer)
		jp	l_mainLoop


loc_EC3:
		ld	b, 1
		ld	c, 3
		call	pseudoRNG
		cp	3
		jp	nz, l_doKnock_noAnswer
		ld	a, (g_currentRoomNumber)
		add	a, 7				; Add 7 to hallway room # to get room #
		ld	(g_currentRoomNumber), a	; Move to new room
		jp	l_mainLoopEntry
