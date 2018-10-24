; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_doLogin_gcsLogin:
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	nz, l_doLogin_logonAborted

		ld	a, (g_terminalSkipPassword)
		cp	FALSE
		jp	z, l_gcsTerminal_printFirst

		printMessage(s_password)
		call	parseInput
		ld	a, (g_inputWordCount)
		cp	1
		jp	nz, l_doLogin_logonAborted

		ld	a, (playerCommand)
		cp	p_zebra
		jp	z, l_gcsTerminal_printIntro
		jp	l_doLogin_logonAborted
; ---------------------------------------------------------------------------

l_gcsTerminal_printFirst:
		ld	a, TRUE
		ld	(g_terminalSkipPassword), a
		printMessage(s_terminal_gcsFirst1)
		printMessage(s_terminal_gcsFirst2)

l_gcsTerminal_printIntro:
		printMessage(s_terminal_gcsIntro)

loc_3417:
		printMessage(s_terminal_gcsOptions)
		call	parseInput
		ld	a, (g_inputWordCount)
		cp	1
		jp	z, loc_3431
		cp	2
		jp	z, loc_345D
		jp	loc_3417
; ---------------------------------------------------------------------------

loc_3431:
		ld	b, 0
		ld	a, (playerCommand)

loc_3436:
		cp	p_logoff
		jp	z, l_doLogin_logoff
		cp	p_e
		jp	z, l_doLogin_logoff
		cp	p_exit
		jp	z, l_doLogin_logoff
		cp	p_log
		jp	z, l_doLogin_logoff
		cp	p_orders
		jp	z, l_gcsTerminal_printOrders
		cp	p_1
		jp	z, l_gcsTerminal_printOrders
		ld	a, b
		cp	1
		jp	z, loc_3465
		jp	loc_3417
; ---------------------------------------------------------------------------

loc_345D:
		ld	b, 1
		ld	a, (firstToken)
		jp	loc_3436
; ---------------------------------------------------------------------------

loc_3465:
		ld	b, 0
		ld	a, (secondToken)
		jp	loc_3436
; ---------------------------------------------------------------------------

l_gcsTerminal_printOrders:
		ld	a, (g_gcsComputerState)
		cp	gcsTerminal_initial
		jp	nz, loc_3499

		ld	a, gcsTerminal_givenOrders
		ld	(g_gcsComputerState), a

		IncreaseScore(5)
		printMessage(s_terminal_gcsOrders)
		jp	loc_3417
; ---------------------------------------------------------------------------

l_gcsTerminal_down:
		printMessage(s_terminal_gcsDown)
		jp	loc_3417
; ---------------------------------------------------------------------------

loc_3499:
		cp	gcsTerminal_givenOrders
		jp	z, l_gcsTerminal_down
		printMessage(s_terminal_gcsIdComplete)
		ld	a, (g_currentRoomNumber)
		push	af

		; Move player to room_gcs_headquarters
		ld	a, room_gcs_headquarters
		ld	(g_currentRoomNumber), a
		call	getRoomData

		; Set scoreBonus of room to 5
		ld	hl, (g_currentRoomData)
		ld	(hl), 5

		; Mark room as having a first message
		inc	hl				; hl = &hq.roomFlags
		ld	a, (hl)
		or	roomFlag_first
		ld	(hl), a

		; Set first message
		ld	de, 5
		add	hl, de				; hl = &hq.first_offset
		ld	(hl), HI_BYTE(s_first_gcsHeadquarters_alt)
		inc	hl
		ld	(hl), LO_BYTE(s_first_gcsHeadquarters_alt)

		ld	a, TRUE
		ld	(g_gcsComputerState), a
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData

		ld	a, TRUE
		ld	(g_gcs_changeBulletin), a
		jp	loc_3417
