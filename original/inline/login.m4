; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_login:
		ld	hl, (g_currentRoomData)		; hl = &g_currentRoomData.scoreBonus
		inc	hl				; hl = &g_currentRoomData.roomFlags
		ld	a, (hl)
		and	roomFlag_terminal
		cp	0
		jp	nz, l_login_readUserName
		printMessage(s_unableToDoNow)
		jp	l_mainLoop

l_login_readUserName:
		printMessage(s_userName)
		call	parseInput
		ld	a, (g_inputWordCount)
		cp	1
		jp	z, l_login_checkUserName

l_login_logonAborted:
		printMessage(s_logonAborted)
		jp	l_mainLoopEntry

l_login_checkUserName:
		ld	a, (playerCommand)
		cp	p_public
		jp	z, l_login_earthLogin
		cp	p_player
		jp	z, l_login_gcsLogin
		jp	l_login_logonAborted
; ---------------------------------------------------------------------------

include(`inline/terminal/earth.m4')
include(`inline/terminal/gcs.m4')
