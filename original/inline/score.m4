; ---------------------------------------------------------------------------
; Print score message and ask if the player wants to quit
; ---------------------------------------------------------------------------
l_inline_score:
		cp	p_score
		jp	nz, l_inline_quit
		printMessage(s_currentScorePrefix)
		call	convertScoreToString
		printMessage(s_currentScorePostfix)
		call	getYesNo
		cp	0
		jp	nz, l_inline_playerDied

l_inline_printOkayAndLoop:
		printMessage(s_okay)
		jp	l_mainLoop
