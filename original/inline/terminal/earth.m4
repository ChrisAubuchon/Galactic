; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_doLogin_earthLogin:
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	nz, l_doLogin_logonAborted
		printMessage(s_password)
		call	parseInput
		ld	a, (g_inputWordCount)
		cp	1
		jp	nz, l_doLogin_logonAborted
		ld	a, (playerCommand)
		cp	p_secret
		jp	z, l_doLogin_earthTerminal
		jp	l_doLogin_logonAborted

l_doLogin_earthTerminal:
		ld	a, (g_earth_terminalIntroFlag)
		cp	TRUE
		jp	z, loc_3286
		printMessage(s_terminal_ps_verbose)
		ld	a, TRUE
		ld	(g_earth_terminalIntroFlag), a
		jp	loc_328D

loc_3286:
		printMessage(s_terminal_ps_terse)

loc_328D:
		call	parseInput
		ld	a, (g_inputWordCount)
		cp	1
		jp	z, loc_32A0
		cp	2
		jp	z, loc_32EF
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_32A0:
		ld	b, 0
		ld	a, (playerCommand)

loc_32A5:
		cp	p_logoff
		jp	z, l_doLogin_logoff
		cp	p_e
		jp	z, l_doLogin_logoff
		cp	p_exit
		jp	z, l_doLogin_logoff
		cp	p_log
		jp	z, l_doLogin_logoff
		cp	p_planet
		jp	z, l_planetRoutine_enter
		cp	p_find
		jp	z, l_planetRoutine_enter
		cp	p_1
		jp	z, l_planetRoutine_enter
		cp	p_personnel
		jp	z, l_earthTerminal_personnel
		cp	p_static
		jp	z, l_earthTerminal_personnel
		cp	p_2
		jp	z, l_earthTerminal_personnel
		cp	p_general
		jp	z, l_earthTerminal_gossip
		cp	p_personnel
		jp	z, l_earthTerminal_gossip
		cp	p_3
		jp	z, l_earthTerminal_gossip
		ld	a, b
		cp	1
		jp	z, loc_32F7
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_32EF:
		ld	b, 1
		ld	a, (firstToken)
		jp	loc_32A5
; ---------------------------------------------------------------------------

loc_32F7:
		ld	b, 0
		ld	a, (secondToken)
		jp	loc_32A5
; ---------------------------------------------------------------------------

l_doLogin_logoff:
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	nz, l_logoffRoutine_complete
		ld	a, (g_gcsComputerState)
		cp	gcsTerminal_initial
		jp	nz, l_logoffRoutine_complete
		ld	a, gcsTerminal_givenOrders
		ld	(g_gcsComputerState), a

l_logoffRoutine_complete:
		printMessage(s_terminal_logoffComplete)
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

l_planetRoutine_enter:
		printMessage(s_terminal_planetPrompt)
		call	parseInput
		ld	a, (g_inputWordCount)
		cp	1
		jp	z, loc_333F
		cp	2
		jp	z, loc_337A

l_planetRoutine_aborted:
		printMessage(s_terminal_planetAborted)
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_333F:
		ld	b, 0
		ld	a, (playerCommand)

loc_3344:
		cp	p_isthur
		jp	z, l_planetRoutine_isthur
		cp	p_navier
		jp	z, l_planetRoutine_navier
		cp	p_solomaw
		jp	z, l_planetRoutine_solomaw
		cp	p_space
		jp	z, l_planetRoutine_unknown
		cp	p_central
		jp	z, l_planetRoutine_unknown
		cp	p_earth
		jp	z, l_planetRoutine_unknown
		cp	p_e
		jp	z, l_planetRoutine_terminated
		cp	p_exit
		jp	z, l_planetRoutine_terminated
		cp	p_letterM
		jp	z, l_planetRoutine_terminated
		ld	a, b
		cp	1
		jp	z, loc_3382
		jp	l_planetRoutine_aborted
; ---------------------------------------------------------------------------

loc_337A:
		ld	b, 1
		ld	a, (firstToken)
		jp	loc_3344
; ---------------------------------------------------------------------------

loc_3382:
		ld	b, 0
		ld	a, (secondToken)
		jp	loc_3344
; ---------------------------------------------------------------------------

l_planetRoutine_isthur:
		printMessage(s_terminal_planetIsthur)
		jp	l_planetRoutine_enter
; ---------------------------------------------------------------------------

l_planetRoutine_navier:
		printMessage(s_terminal_planetNavier)
		jp	l_planetRoutine_enter
; ---------------------------------------------------------------------------

l_planetRoutine_solomaw:
		printMessage(s_terminal_planetSolomaw)
		jp	l_planetRoutine_enter
; ---------------------------------------------------------------------------

l_planetRoutine_unknown:
		printMessage(s_terminal_planetUnavailable)
		jp	l_planetRoutine_enter
; ---------------------------------------------------------------------------

l_planetRoutine_terminated:
		printMessage(s_terminal_planetTerminated)
		jp	loc_3286
; ---------------------------------------------------------------------------

l_earthTerminal_personnel:
		printMessage(s_terminal_earthPersonnel)
		jp	loc_3286
; ---------------------------------------------------------------------------

l_earthTerminal_gossip:
		printMessage(s_terminal_earthGossip)
		jp	loc_3286
; ---------------------------------------------------------------------------
